//
//  ContentView.swift
//  WizardCahill
//
//  Created by Karen Seimears on 3/27/24.
//
import AVKit
import SwiftUI

struct ContentView: View {
    
    @StateObject private var questionService = QuestionService()
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundImage()
                
                
                VStack {
                    VStack {
                        Text("iPad Wizard")
                            .font(Font.custom("Truecat", size: 100))
                            .foregroundStyle(Color.indigo)
                            .shadow(color: .black, radius: 2)
                    }.position(CGPoint(x: 420.0, y: 10.0))
                    
                    
                    NavigationLink(destination: LearnView())
                    {
                        Text("Learn")
                            .foregroundStyle(.green)
                            .shadow(color: .black, radius: 2)
                            .font(Font.custom("Truecat", size: 60))
                    }.position(CGPoint(x: 200.0, y: 80.0))
                    
                    
           
                    
                    NavigationLink(destination: TestView(question: questionService.randomQuestion(), score: 0))
                    {
                        Text("Test")
                            .foregroundStyle(.purple)
                            .shadow(color: .black, radius: 2)
                            .font(Font.custom("Truecat", size: 60))
                    }.position(CGPoint(x: 700.0, y: -150.0))
                    
                    NavigationLink(destination: StatusView())
                    {
                        Text("Status")
                            .foregroundStyle(.yellow)
                            .shadow(color: .black, radius: 2)
                            .font(Font.custom("Truecat", size: 60))
                    }.position(CGPoint(x: 450.0, y: -80.0))
                    
                    VStack {
                        Image("cahill")
                            .frame(width: 400, height: 800)
                            .position(CGPoint(x: 500.0, y: 100.0))
                    }
                    NavigationLink(destination: TestView(question: questionService.randomQuestion(), score: 0))
                    {
                        HStack {
                            Image(systemName: ("drop.circle"))
                            Text("Return to last location")
                        }
                        .font(.system(size: 24))
                        .foregroundColor(.white)
                        .position(CGPoint(x: 200.0, y: 130.0))
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}
#Preview {
    ContentView()
}

