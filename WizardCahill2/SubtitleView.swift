//
//  SubtitleView.swift
//  WizardCahill2
//
//  Created by Karen Seimears on 4/16/24.
//

import SwiftUI

struct SubtitleView {
    
    let selectedTopic: Topics
    let subtitles: [String]
    let allTopics = Topics.allTopics
    
    var body: some View {
        TabView {
            ForEach(subtitles, id: \.self) { subtitle in
                Text(subtitle)
                    .font(.title)
                    .padding()
                    .tag(subtitle) // Use subtitle as tag for identification
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .navigationBarTitle(selectedTopic.rawValue.capitalized)
    }
}
