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

enum Topics: String, CaseIterable, Equatable {
    case ipad
    case troubleshooting
    case pages
    case keynote
    case numbers
    case videoProd
    
    static var allTopics: [Topics] {
        return self.allCases
    }
}

var iPadSubtitles: [String] = [
    //ipad
    "Apps",
    "Wifi",
    "Control Center",
    "Spoken Content",
    "Camera",
    "Notes",
    "Translate",
    ]

var troubleSubtitles: [String] = [
    "Basics",
    "iCloud",
    "Wifi",
    "Self-Service",
    "Updates",
    "Drive",
   ]

var keynoteSubtitles: [String] = [
    "Keynote Basics",
    "Slides",
    "Movies",
    "Audio",
    "GIFs",
    "Collaboration",
]

var pagesSubtitles: [String] = [
    "Pages Basics",
    "Documents",
    "Pages Media",
    "eBooks",
    "Formatting",
    "Collaborating",
    ]

var numbersSubtitles: [String] = [
    "Numbers Basics",
    "Numbers Media",
    "Charts",
    "Tables",
    "Drawing",
    "iCloud Collaboration",
  ]

var videoProdSubtitles: [String] = [
    "Photos",
    "Clips Video",
    "Clips Live Titles",
    "iMovie",
    "Green Screen",
]

struct LearnView: View {
    var topic: Topics
    var subtitles: [String]
    @State private var selectedSubtitleIndex = 0
    @ObservedObject var learnService: LearnService


    
    let topicSubtitles: [Topics: [String]] = [
        .ipad: ["Apps", "Wifi", "Control Center", "Spoken Content", "Camera", "Notes", "Translate"],
        .troubleshooting: ["Basics", "iCloud", "Wifi", "Self-Service", "Updates", "Drive"],
        .keynote: ["Keynote Basics", "Slides", "Movies", "Audio", "GIFs", "Collaboration"],
        .pages: [ "Pages Basics", "Documents", "Pages Media", "eBooks", "Formatting", "Collaborating"],
        .numbers: ["Numbers Basics", "Numbers Media", "Charts", "Tables", "Drawing", "iCloud Collaboration"],
        .videoProd: ["Photos", "Clips Video", "Clips Live Titles", "iMovie", "Green Screen"]
    ]
    
    let columns = [
        GridItem(.adaptive(minimum: 300))
    ]
    
   
    
    var body: some View {
        ZStack {
            BackgroundImage()
            Color.green
                .opacity(0.4)
                .ignoresSafeArea()
            
            VStack {
                Text("Learn")
                    .foregroundStyle(.green)
                    .shadow(color: .black, radius: 2)
                    .font(Font.custom("Truecat", size: 100))
                    .padding(.top, 50)
                
               
                
                LazyVGrid(columns: columns, spacing: 20) {
                    
                    
                    NavigationLink(destination: LearnDetailView(topic: topic, subtitles: subtitles, learn: learnService.learnBank)) {
                        Image("ipadBasics")
                            .resizable()
                            .shadow(color: .black, radius: 2)
                            .frame(width: 400, height: 200)
                            .foregroundColor(.green)
                    }
                    
                    NavigationLink(destination: LearnDetailView(topic: topic, subtitles: subtitles, learn: learnService.learnBank)) {
                        Image("troubleCloud")
                            .resizable()
                            .shadow(color: .black, radius: 2)
                            .frame(width: 400, height: 200)
                            .foregroundColor(.green)
                    }
                    
                    NavigationLink(destination: LearnDetailView(topic: topic, subtitles: subtitles, learn: learnService.learnBank)) {
                        Image("pagesCloud")
                            .resizable()
                            .shadow(color: .black, radius: 2)
                            .frame(width: 400, height: 200)
                            .foregroundColor(.green)
                    }
                    
                    NavigationLink(destination: LearnDetailView(topic: topic, subtitles: subtitles, learn: learnService.learnBank)) {
                        Image("numbersCloud")
                            .resizable()
                            .shadow(color: .black, radius: 2)
                            .frame(width: 400, height: 200)
                            .foregroundColor(.green)
                    }
                    
                    NavigationLink(destination: LearnDetailView(topic: topic, subtitles: subtitles, learn: learnService.learnBank)) {
                        Image("keynoteCloud")
                            .resizable()
                            .shadow(color: .black, radius: 2)
                            .frame(width: 400, height: 200)
                            .foregroundColor(.green)
                    }
                    
                    NavigationLink(destination: LearnDetailView(topic: topic, subtitles: subtitles, learn: learnService.learnBank)) {
                        Image("videoProdCloud")
                            .resizable()
                            .shadow(color: .black, radius: 2)
                            .frame(width: 400, height: 200)
                            .foregroundColor(.green)
                    }
                }
                
                Spacer()
                Spacer()
                
                Text("Pick a subject to explore!")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.green)
                    .shadow(color: .black, radius: 2)
                    .font(Font.custom("Truecat", size: 50))
                    .padding(50)
                
                Spacer()
            }
            .navigationViewStyle(.stack)
        }
    }
}
