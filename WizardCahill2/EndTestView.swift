//
//  EndTestView.swift
//  WizardCahill2
//
//  Created by Karen Seimears on 4/15/24.
//

import SwiftUI

struct EndTestView: View {
    
    @AppStorage("tryScore") var tryScore: Double = 0.0

    var body: some View {
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
                Text("RESULTS:")
                    .font(Font.custom("Truecat", size: 100))
                    .foregroundStyle(Color.indigo)
                    .shadow(color: .black, radius: 2)
                
                
                ZStack {
                    ProgressView("Status…", value: tryScore, total: 5)
                        .progressViewStyle(GaugeProgressStyle())
                        .frame(width: 200, height: 200)
                        .contentShape(Rectangle())
                        .padding()
                    Text("\(tryScore, specifier: "%.f") / 5")
                        .bold()
                        .font(.title)
                }
            }
        }
    }
}

#Preview {
    EndTestView()
}
