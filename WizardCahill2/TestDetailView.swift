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
    
    var question: Question
   
    @StateObject private var questionService = QuestionService()
    
    @StateObject private var status = StatusProgress(ipadPassed: false, troublePassed: false, videoProdPassed: false, pagesPassed: false, keynotePassed: false, numbersPassed: false, progress: 0)
    
    @State public var score: Int
    @State public var answered: Bool = false
    @State public var correct: Bool = false
    @State public var startQuiz: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundImage()
            Color.purple
                .ignoresSafeArea()
                .opacity(0.2)
            
            
            ScrollView {
               
                Button{
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
                        Text(question.title)
                            .font(Font.custom("Truecat", size: 60))

                        
                        VStack {
                            Text(question.prompt)
                                .font(.system(size: 60))
                                .padding(35)
                                .frame(width: 400)
                            
                            Group { //buttons
                                Button(question.answers[0]){
                                    evaluate(answer: question.answers[0])
                                }.disabled(answered)
                                    .buttonStyle(TestButton())
                                Button(question.answers[1]){
                                    evaluate(answer: question.answers[1])
                                }.disabled(answered)
                                    .buttonStyle(TestButton())
                                
                                Button(question.answers[2]){
                                    evaluate(answer: question.answers[2])
                                }.disabled(answered)
                                    .buttonStyle(TestButton())
                                
                                Button(question.answers[3]){
                                    evaluate(answer: question.answers[3])
                                }.disabled(answered)
                                    .buttonStyle(TestButton())
                            }
                        }.background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(answered ? Color.gray : Color.purple)
                        )
                        
                        Button {
//                        questionService.randomQuestion()
                        } label : {
                            Image(systemName: "arrowshape.right.circle.fill")
                                .font(.system(size: 70))
                                .foregroundStyle(answered ? Color.purple : Color.gray)
                               
                        }.disabled(!answered)
                            .position(x: 700, y: 50)
                            
                        }
                    }
                }
            }
        }
    
    func evaluate(answer: String) {
         answered = true
         if answer == question.correctAnswer {
             correct = true
             score += 20
         }
     }
}

#Preview {
    TestDetailView(question: Question(title: "Error", prompt: "Error?", answers: ["1","2","3","4"], correctAnswer: "4", subject: .ipad), score: 0)
}
