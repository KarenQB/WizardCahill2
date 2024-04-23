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

enum Subject: String, CaseIterable {
    case ipad
    case troubleshooting
    case pages
    case keynote
    case numbers
    case videoProd
    case Learn
    case Test
    case Status
    
    var color: Color {
        switch self {
        case .ipad: return Color.purple
        case .troubleshooting: return Color.pink
        case .keynote: return Color.blue
        case .pages: return Color.orange
        case .numbers: return Color.green
        case .videoProd: return Color.yellow
        case .Learn: return Color.green
        case .Status: return Color.orange
        case .Test: return Color.mint
        }
    }
    
    
}



struct TestDetailView: View {
    
    @StateObject private var questionService = QuestionService()
    @State private var filteredQuestion: Question?
    @State private var startQuiz: Bool = false
    @State private var showAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var numberOfQuestionsPresented = 0
    
    @State private var showEndTestView = false
    @State private var endTest = false
    
    @AppStorage("tryScore") var tryScore: Double = 0.0
    
    var subject: Subject
    
    @EnvironmentObject var subjectStatusManager: SubjectStatusManager
    
    var body: some View {
        ZStack {
            BackgroundImage()
            subject.color
                .opacity(0.2)
                .ignoresSafeArea()
            
            VStack {
                if !startQuiz {
                    Button(action: {
                        startQuiz = true
                        fetchRandomQuestionForSubject()
                        tryScore = 0
                    }) {
                        Text("Start Quiz")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.purple))
                    }
                    .padding()
                }
                
                if startQuiz {
                    Spacer()
                    
                        Group {
                            if subject == .ipad {
                                Text("iPad Basics")
                                    .foregroundStyle(subject.color)
                            }
                            if subject == .troubleshooting {
                                Text("Troubleshooting")
                                    .foregroundStyle(subject.color)
                            }
                            if subject == .videoProd {
                                Text("Video Production")
                                    .foregroundStyle(subject.color)
                            }
                            if subject == .keynote {
                                Text("Keynote")
                                    .foregroundStyle(subject.color)
                            }
                            if subject == .numbers {
                                Text("Numbers")
                                    .foregroundStyle(subject.color)
                            }
                            if subject == .pages {
                                Text("Pages")
                                    .foregroundStyle(subject.color)
                            }
                        }                    .font(Font.custom("Truecat", size: 80))
                            .multilineTextAlignment(.center)
                    
                
                    VStack {
                        if let question = filteredQuestion {
                            Text(question.prompt)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(subject.color)
                                .padding()
                            
                            // Answer Buttons
                            ForEach(0..<question.answers.count, id: \.self) { index in
                                Button(action: {
                                    evaluate(answer: question.answers[index])
                                }) {
                                    Text(question.answers[index])
                                        .foregroundColor(.white)
                                        .padding()
                                        .font(.title)
                                        .frame(maxWidth: 600) // Limit width to 600
                                        .background(RoundedRectangle(cornerRadius: 10).foregroundColor(subject.color))
                                        .padding(.horizontal)
                                }
                                .disabled(showAlert)
                            }
                            .padding(.vertical)
                            
                            
                        } else {
                            Text("Loading...")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .onAppear {
                                    fetchRandomQuestionForSubject()
                                }
                        }
                        
                        // Progress
                        Text("Question \(numberOfQuestionsPresented) / 5")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(.top)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 50).foregroundColor(.white).opacity(0.5))
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 2) // Light gray border
                    )
                    .padding()
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text(alertTitle),
                            message: Text(alertMessage),
                            dismissButton: .default(Text("OK")) {
                                showAlert = false
                                if numberOfQuestionsPresented < 5 {
                                    fetchRandomQuestionForSubject()
                                } else {
                                    endTest = true
                                    showEndTestView = true
                                }
                            }
                        )
                    }
                    Spacer()
                    Text("\(tryScore, specifier: "%.f") correct")
                        .foregroundStyle(Color.gray)
                        .font(.largeTitle)
                    Spacer()

                }
                
                // End Test View (after 5 questions)
                if showEndTestView == false && endTest == true {
                    HStack(spacing: 20) {
                        NavigationLink(destination:
                                        AnyView(TestDetailView(subject: subject))) {
                            Text("Try Again")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 40).foregroundColor(subject.color))
                        }
                        
                        NavigationLink(destination: AnyView(ContentView(subtitles: pagesSubtitles))) {
                            Text("Main Menu")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 40).foregroundColor(subject.color))
                        }
                    }
                    .padding()
                }
            }
        }
        .sheet(isPresented: $showEndTestView) {
            EndTestView(tryScore: tryScore)
                .onAppear {
                    // Update if test is passed
                    if tryScore >= 4 {
                        switch subject {
                        case .ipad: subjectStatusManager.ipadPassed = true
                        case .troubleshooting: subjectStatusManager.troubleshootingPassed = true
                        case .pages: subjectStatusManager.pagesPassed = true
                        case .keynote: subjectStatusManager.keynotePassed = true
                        case .numbers: subjectStatusManager.numbersPassed = true
                        case .videoProd: subjectStatusManager.videoProdPassed = true
                        case .Learn: break
                        case .Test: break
                        case .Status: break
                            
                        }
                    }
                }
        }
    }
    
    // Function to fetch a random question for the subject
    func fetchRandomQuestionForSubject() {
        filteredQuestion = questionService.fetchRandomQuestionForSubject(subject)
        numberOfQuestionsPresented += 1
    }
    
    // Function to evaluate the selected answer
    func evaluate(answer: String) {
        if let question = filteredQuestion {
            if answer == question.correctAnswer {
                tryScore += 1
                alertTitle = "Correct!"
                alertMessage = "Keep it up!"
            } else {
                alertTitle = "Incorrect!"
                alertMessage = "You can do it."
            }
            showAlert = true
        }
    }
}
#Preview {
    TestDetailView(subject: .ipad)
}
