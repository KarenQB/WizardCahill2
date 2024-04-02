//
//  LearnView.swift
//  WizardCahill
//
//  Created by Karen Seimears on 3/29/24.
//

import SwiftUI

struct LearnView: View {
    
    
    
    var body: some View {
        ZStack {
            BackgroundImage()
                .colorMultiply(.green)
            Color.green
                .ignoresSafeArea()
                .opacity(0.4)
            
            VStack {
                Image("learn")
                
  
                
            }
        }
        
    }
}

#Preview {
    LearnView()
}

struct Learn {
    var id = UUID()
    var title: String
    var subtitle: String
    var explore: String
    var exploreURL: String
    var dos: [String]
    var extends: [String]
}
