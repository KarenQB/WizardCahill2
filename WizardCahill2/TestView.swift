//
//  TestView.swift
//  WizardCahill
//
//  Created by Karen Seimears on 3/29/24.
//

import SwiftUI

struct TestView: View {
    
    var question: Question
    @StateObject private var questionService = QuestionService()

    
    @State public var score: Int
    @State public var answered: Bool = false
    @State public var correct: Bool = false
    @State public var startQuiz: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundImage()
                .colorMultiply(.cyan)
            Color.cyan
                .ignoresSafeArea()
                .opacity(0.2)
            
            
            ScrollView {
               
                Button{
                    startQuiz = true
                } label: {
                    Text("Start Quiz")
                }.buttonStyle(TestButton())
                    .background(Color.black)
                    .padding(50)
                
                if startQuiz {
                    VStack{
                        Text(question.title)
                            .font(Font.custom("Truecat", size: 60))

                        
                        VStack {
                            Text(question.prompt)
                                .font(.system(size: 60))
                                .padding(35)
                            
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
                                .fill(answered ? Color.gray : Color.blue)
                        )
                        
                        Button {
                        questionService.randomQuestion()
                        } label : {
                            Image(systemName: "arrowshape.right.circle.fill")
                                .font(.system(size: 70))
                                .foregroundStyle(answered ? Color.green : Color.gray)
                               
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
    TestView(question: Question(title: "iPad Basics", prompt: "What is the button at the bottom of the screen?", answers: ["Home", "Power", "Sleep", "Settings"], correctAnswer: "Home"), score: 0)
}

struct Question {
    var id = UUID()
    var title: String
    var prompt: String
    var answers: [String]
    var correctAnswer: String
}
