//
//  LearnSubtitleView.swift
//  WizardCahill2
//
//  Created by Karen Seimears on 4/16/24.
//

import SwiftUI

struct LearnSubtitleView: View {
    var learn: Learn
    
    @StateObject private var learnService = LearnService()
    
        var subtitle: String
        var explore: String
        var exploreURL: String
        var dos: [String]
        var extends: [String]
        
    let allTopics = Topics.allTopics
    
        var body: some View {
            VStack {
                Text(subtitle)
                    .font(Font.custom("Truecat", size: 30))
                Text(explore)
                Link("Explore", destination: URL(string: exploreURL)!)
                ForEach(dos, id: \.self) { item in
                    Text(item)
                }
                ForEach(extends, id: \.self) { item in
                    Text(item)
                }
            }
        }
    }
let fakeLearn = Learn(title: "Fake", subtitle: "Fake Subtitle", explore: "Fake Explore", exploreURL: "https://fakeurl.com", dos: ["Fake Do 1", "Fake Do 2"], extends: ["Fake Extend 1", "Fake Extend 2"], topic: .ipad)

#Preview {
    LearnSubtitleView(learn: fakeLearn, subtitle: "Fake Subtitle", explore: "Fake Explore", exploreURL: "https://fakeurl.com", dos: ["Fake Do 1", "Fake Do 2"], extends: ["Fake Extend 1", "Fake Extend 2"])
}


