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
                Color.indigo
                    .ignoresSafeArea()
                    .opacity(0.4)
                
                Group {
                    Image("cahill")
                        .resizable()
                }
                .frame(width: 1200, height: 1100)
                .position(x: 550, y: 820)
                
                
                VStack {
                    Text("iPad Wizard")
                        .font(Font.custom("Truecat", size: 100))
                        .foregroundStyle(Color.indigo)
                        .shadow(color: .black, radius: 2)
                    
                    
                    HStack {
                        NavigationLink(destination: LearnView()) {
                            VStack {
                                Image("learnCloud")
                                    .resizable()
                                    .frame(width: 400, height: 200)
                            } .foregroundColor(.green)
                        }
                        
                        
                        NavigationLink(destination: TestView()) {
                            VStack {
                                Image("testCloud")
                                    .resizable()
                                    .frame(width: 400, height: 200)
                            } .foregroundColor(.green)
                        }
                    }
                    
                    VStack {
                        NavigationLink(destination: StatusView()) {
                            VStack {
                                Image("statusCloud")
                                    .resizable()
                                    .frame(width: 400, height: 200)
                            } .foregroundColor(.green)
                        }
                    }
                    Spacer()
                }
                Button{
                    //add code to go back here
                } label: {
                    HStack {
                        Image(systemName: "drop.circle")
                        Text("Go back to last location.")
                    }
                }  .position(x: 200, y: 1000)
                    .foregroundColor(.white)
            }
             
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    ContentView()
}

