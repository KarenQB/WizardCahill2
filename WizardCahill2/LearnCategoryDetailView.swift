//
//  LearniPadBasics.swift
//  WizardCahill2
//
//  Created by Karen Seimears on 4/11/24.
//

import SwiftUI

struct LearnCategoryDetailView: View {
    
    
    var learn: Learn
   
    @StateObject private var learnService = LearnService()

    
    var body: some View {
        ZStack {
            BackgroundImage()
            Color.yellow
                .ignoresSafeArea()
                .opacity(0.4)
            
                        VStack{
            
                            Text(learn.title)
                                .font(Font.custom("Truecat", size: 60))
            //
            //                Text(learn.subtitle)
            //                    .font(Font.custom("Truecat", size: 30))
            //
            //
            //                Text(learn.explore)
            //                    .font(.title)
            //
            //                Text(learn.exploreURL)
            //
            //
            //                Text(learn.dos)
            //                    .font(.body)
            //
            //                Text(learn.extends)
            //                    .font(.body)
            //
            //
                        }
            TabView {//app
                LearnView()
                    .tabItem {//needs to go to apps subtitle
                        Label("Apps", systemImage: "apps.ipad")
                    }
                
                LearnView()
                    .tabItem { //needs to go to CC subtitle
                        Label("Control Center", systemImage: "gear")
                    }
                
                LearnView()
                    .tabItem { //needs to go to camera subtitle
                        Label("Camera", systemImage: "camera")
                    }
                
                LearnView()
                    .tabItem { //needs to go to spoken text subtitle
                        Label("Spoken Text", systemImage: "speaker.wave.2.bubble.left.fill")
                    }
                
                LearnView()
                    .tabItem {
                        Label("Notes", systemImage: "apps.ipad")
                    }
                
                
                LearnView() //needs to go to translate subtitle
                    .tabItem {
                        Label("Translate", systemImage: "globe")
                    }
                
                
                //
                //                            }
            }
        }
    }
}
