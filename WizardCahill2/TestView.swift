//
//  LearnView.swift
//  WizardCahill
//
//  Created by Karen Seimears on 3/29/24.
//

import SwiftUI

struct Learn {
    var id = UUID()
    var title: String
    var subtitle: String
    var explore: String
    var exploreURL: String
    var dos: [String]
    var extends: [String]
    var topic: Topics
}

enum Topics {
    case ipad
    case troubleshooting
    case pages
    case numbers
    case keynote
    case videoProd
}

struct LearnView: View {
    
    @StateObject private var learnService = LearnService()

    
    var body: some View {
        ZStack {
            BackgroundImage()
            Color.green
                .ignoresSafeArea()
                .opacity(0.4)
           
            VStack {
                
                Text("Learn")
                    .foregroundStyle(Color.green)
                    .shadow(color: .black, radius: 2)
                    .font(Font.custom("Truecat", size: 100))
                
                Spacer()
                
                HStack {
                    NavigationLink(destination: LearnCategoryDetailView(learn: Learn(title: "Error", subtitle: "error", explore: "error", exploreURL: "error", dos: [""], extends: [""], topic: .ipad))) {
                        VStack {
                            Image("ipadBasics")
                                .resizable()
                                .frame(width: 400, height: 200)
                        } .foregroundColor(.green)
                    }
                    
                    
                    NavigationLink(destination: LearnCategoryDetailView(learn: Learn(title: "Error", subtitle: "error", explore: "error", exploreURL: "error", dos: [""], extends: [""], topic: .ipad))) {
                        VStack {
                            Image("troubleCloud")
                                .resizable()
                                .frame(width: 400, height: 200)
                        } .foregroundColor(.green)
                    }
                }
                
                HStack {
                    NavigationLink(destination: LearnCategoryDetailView(learn: Learn(title: "Error", subtitle: "error", explore: "error", exploreURL: "error", dos: [""], extends: [""], topic: .ipad))) {
                        VStack {
                            Image("pagesCloud")
                                .resizable()
                                .frame(width: 400, height: 200)
                        } .foregroundColor(.green)
                    }
                    NavigationLink(destination: LearnCategoryDetailView(learn: Learn(title: "Error", subtitle: "error", explore: "error", exploreURL: "error", dos: [""], extends: [""], topic: .ipad))) {
                        VStack {
                            Image("numbersCloud")
                                .resizable()
                                .frame(width: 400, height: 200)
                        } .foregroundColor(.green)
                    }
                }
                HStack {
                    Spacer()
                    NavigationLink(destination: LearnCategoryDetailView(learn: Learn(title: "Error", subtitle: "error", explore: "error", exploreURL: "error", dos: [""], extends: [""], topic: .ipad))) {
                        VStack {
                            Image("keynoteCloud")
                                .resizable()
                                .frame(width: 400, height: 200)
                        } .foregroundColor(.green)
                    }
                    Spacer()
                    
                    NavigationLink(destination: LearnCategoryDetailView(learn: Learn(title: "Error", subtitle: "error", explore: "error", exploreURL: "error", dos: [""], extends: [""], topic: .ipad))) {
                        VStack {
                            Image("videoProdcloud")
                                .resizable()
                                .frame(width: 400, height: 200)
                        } .foregroundColor(.green)
                        Spacer()
                    }
                }

                Spacer()
                
                HStack {
                    Text("Pick a subject to explore!")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color.green)
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
    LearnView()
}


