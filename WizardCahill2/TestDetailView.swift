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
    
    @State private var score: Int = 0
    
    @ObservedObject var questionService: QuestionService
    var question: Question
    
    //  @StateObject private var status = StatusProgress(ipadPassed: false, troublePassed: false, videoProdPassed: false, pagesPassed: false, keynotePassed: false, numbersPassed: false, progress: 0)
    
    
    var body: some View {
        ZStack {
            BackgroundImage()
            Color.purple
                .ignoresSafeArea()
                .opacity(0.2)
            
            VStack {
                Button {
                    questionService.fetchRandomQuestionForSubject(.ipad)
                    startQuiz = true
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
                
                
                if startQuiz {
                    VStack{
                        VStack {
                            Text(question.prompt)
                                .font(.system(size: 40))
                                .padding(35)
                                .frame(width: 600)
                            
                            Group {
                                ForEach(question.answers.indices, id: \.self) { index in
                                    
                                    Button(question.answers[index]) {
                                        evaluate(answer: question.answers[index])
                                    }
                                    .disabled(questionService.answered)
                                    .buttonStyle(TestButton())
                                    
                                }
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(questionService.answered ? Color.gray : Color.purple)
                            )
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
                        }
                    }
                }
            }
        }
    }
    
    // Place the evaluate function outside of the body
    func evaluate(answer: String) {
        print("Button tapped with answer: \(answer)")
        
        questionService.answered = true
        if answer == question.correctAnswer {
            questionService.correct = true
            score += 20
        }
    }
}

