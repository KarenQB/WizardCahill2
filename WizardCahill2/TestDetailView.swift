//
//  TestView.swift
//  WizardCahill
//
//  Created by Karen Seimears on 3/29/24.
//

import SwiftUI

struct Question {
    var id = UUID()
    var title: String
    var prompt: String
    var answers: [String]
    var correctAnswer: String
    var subject: Subject
}

enum Subject {
    case ipad
    case troubleshooting
    case pages
    case keynote
    case numbers
    case videoProd
}

struct TestDetailView: View {
    
    var subject: Subject
    @State private var startQuiz: Bool = false
    
    @AppStorage("tryScore") var tryScore: Double = 0.0
    @State private var showAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var numberOfQuestionsPresented = 0
    
    
    @ObservedObject var questionService: QuestionService
    @State public var question: Question
    @State private var showEndTestView = false

    
    var body: some View {
        ZStack {
            BackgroundImage()
            Color.purple
                .ignoresSafeArea()
                .opacity(0.2)
            
            VStack {
                if startQuiz == false {
                    Button {
                        questionService.fetchRandomQuestionForSubject(.ipad)
                        startQuiz = true
                        tryScore = 0
                    } label: {
                        Text("Start Quiz")
                            .font(.largeTitle)
                    }.padding()
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(
                                cornerRadius: 10,
                                style: .continuous
                            ))
                        .foregroundColor(.purple)
                        .padding(50)
                }
                
                if startQuiz {
                    VStack{
                        VStack {
                            Text(question.prompt)
                                .font(.system(size: 40))
                                .padding(35)
                                .frame(width: 600)
                            
                            VStack {
                                Button(question.answers[0]){
                                    evaluate(answer: question.answers[0])
                                }.disabled(questionService.answered)
                                    .buttonStyle(TestButton())
                                
                                Button(question.answers[1]){
                                    evaluate(answer: question.answers[1])
                                }.disabled(questionService.answered)
                                    .buttonStyle(TestButton())
                                
                                Button(question.answers[2]){
                                    evaluate(answer: question.answers[2])
                                }.disabled(questionService.answered)
                                    .buttonStyle(TestButton())
                                
                                Button(question.answers[3]){
                                    evaluate(answer: question.answers[3])
                                }.disabled(questionService.answered)
                                    .buttonStyle(TestButton())
                                
                            }
                            .alert(isPresented: $showAlert) {
                                Alert(
                                    title: Text(alertTitle),
                                    message: Text(alertMessage),
                                    dismissButton: .default(Text("OK")) {
                                        if numberOfQuestionsPresented < 5 {
                                            if let newQuestion = questionService.fetchRandomQuestionForSubject(.ipad) {
                                                // Update your current question or perform any necessary actions
                                                question = newQuestion
                                            }
                                        } else {
                                            showEndTestView = true
                                        }
                                    }
                                )
                            }
                        }
                        Text("Question \(numberOfQuestionsPresented) / 5")
                            .font(.title)
                            .bold()
                            .foregroundStyle(.purple)
                        
                        HStack {
                            if numberOfQuestionsPresented == 5 && tryScore < 4 {
                                NavigationLink(destination: TestView())
                                {
                                    Text("Try Again")
                                        .font(.largeTitle)
                                }
                                .padding()
                                .foregroundColor(.white)
                                .background(
                                    RoundedRectangle(
                                        cornerRadius: 30,
                                        style: .continuous
                                    ))
                                .foregroundColor(.blue)
                                .padding(50)
                                
                                NavigationLink(destination: ContentView(subtitles: pagesSubtitles))
                                {
                                    Text("Main Menu")
                                        .font(.largeTitle)
                                }
                                .padding()
                                .foregroundColor(.white)
                                .background(
                                    RoundedRectangle(
                                        cornerRadius: 30,
                                        style: .continuous
                                    ))
                                .foregroundColor(.blue)
                                .padding(50)
                            }
                            
                            if numberOfQuestionsPresented == 5 && tryScore >= 4 {
                                NavigationLink(destination: StatusView())
                                {
                                    Text("Check Status")
                                        .font(.title)
                                }
                                .padding()
                                .foregroundColor(.white)
                                .background(
                                    RoundedRectangle(
                                        cornerRadius: 30,
                                        style: .continuous
                                    ))
                                .foregroundColor(.blue)
                                .padding(50)
                                
                                
                                NavigationLink(destination: ContentView(subtitles: pagesSubtitles))
                                {
                                    Text("Main Menu")
                                        .font(.title)
                                }
                                .padding()
                                .foregroundColor(.white)
                                .background(
                                    RoundedRectangle(
                                        cornerRadius: 30,
                                        style: .continuous
                                    ))
                                .foregroundColor(.blue)
                                .padding(50)
                            }
                        }
                    }
                }
            }
            .sheet(isPresented: $showEndTestView) {
                EndTestView()
            }
        }
        .navigationBarBackButtonHidden()
    }
                        func evaluate(answer: String) {
                                if numberOfQuestionsPresented < 5 {
                                numberOfQuestionsPresented += 1
                            } else {
                                    print("\(numberOfQuestionsPresented) of 5")
                                }
                                        
                                if answer == question.correctAnswer {
                                tryScore += 1
                                showAlert = true
                                alertTitle = "Correct!"
                                alertMessage = "Well done!"
                            } else {
                                showAlert = true
                                alertTitle = "Incorrect!"
                                alertMessage = "Try again."
                            }
                        }
                    }
                                    
                                    
