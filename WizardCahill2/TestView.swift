//
//  LearnView.swift
//  WizardCahill
//
//  Created by Karen Seimears on 3/29/24.
//

import SwiftUI

struct TestView: View {
    
    let questionService = QuestionService()
    
    let columns = [
        GridItem(.adaptive(minimum: 300))
    ]
    
    var body: some View {
        ZStack {
            BackgroundImage()
            Color.purple
                .ignoresSafeArea()
                .opacity(0.2)
            
            VStack {
                
                Text("Test")
                    .foregroundStyle(Color.purple)
                    .shadow(color: .black, radius: 2)
                    .font(Font.custom("Truecat", size: 100))
                
                Spacer()
                
                LazyVGrid(columns: columns, spacing: 20) {
                    
                    NavigationLink(destination: TestDetailView(subject: .ipad)) {
                        VStack {
                            Image("ipadBasics")
                                .resizable()
                                .shadow(color: .black, radius: 2)
                                .frame(width: 400, height: 200)
                        }
                        .foregroundColor(.purple)
                    }
                    
                    
                    NavigationLink(destination: TestDetailView(subject: .troubleshooting)) {
                        VStack {
                            Image("troubleCloud")
                                .resizable()
                                .shadow(color: .black, radius: 2)
                                .frame(width: 400, height: 200)
                        } .foregroundColor(.purple)
                    }
                    
                    
                    NavigationLink(destination: TestDetailView(subject: .pages)) {
                        VStack {
                            Image("pagesCloud")
                                .resizable()
                                .shadow(color: .black, radius: 2)
                                .frame(width: 400, height: 200)
                        } .foregroundColor(.green)
                    }
                    
                    NavigationLink(destination: TestDetailView(subject: .numbers)) {
                        VStack {
                            Image("numbersCloud")
                                .resizable()
                                .shadow(color: .black, radius: 2)
                                .frame(width: 400, height: 200)
                        } .foregroundColor(.green)
                    }
                    
                    NavigationLink(destination: TestDetailView(subject: .keynote)) {
                        VStack {
                            Image("keynoteCloud")
                                .resizable()
                                .shadow(color: .black, radius: 2)
                                .frame(width: 400, height: 200)
                        } .foregroundColor(.green)
                    }
                    
                    NavigationLink(destination: TestDetailView(subject: .videoProd)) {
                        VStack {
                            
                            Image("videoProdCloud")
                                .resizable()
                                .shadow(color: .black, radius: 2)
                                .frame(width: 400, height: 200)
                        } .foregroundColor(.green)
                        Spacer()
                    }
                }
                
                Spacer()
                
                HStack {
                    Text("Pick a subject to test!")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color.purple)
                        .shadow(color: .black, radius: 2)
                        .font(Font.custom("Truecat", size: 80))
                        .padding(50)
                    
                }
                Spacer()
            }
            
        }
    }

}
#Preview {
    TestView()
}


