//
//  WizardCahill2App.swift
//  WizardCahill2
//
//  Created by Karen Seimears on 4/2/24.
//

import SwiftUI

@main
struct WizardCahill2App: App {
  
    var body: some Scene {
        WindowGroup {
            ContentView(subtitles: iPadSubtitles)
                .environmentObject(LearnService())

        }
    }
}
