//
//  StatusView.swift
//  WizardCahill
//
//  Created by Karen Seimears on 3/29/24.
//
import SwiftUI

struct StatusView: View {
    
    @State private var progress = 6.1
    @State private var complete = true
    
    let columns = [
           GridItem(.adaptive(minimum: 300))
       ]
    
    var body: some View {
      ZStack {
                BackgroundImage()
                Color.orange
                    .ignoresSafeArea()
                    .opacity(0.4)
               
          VStack {
              
              Text("Status")
                  .foregroundStyle(Color.orange)
                  .shadow(color: .black, radius: 2)
                  .font(Font.custom("Truecat", size: 100))
              
              Spacer()
              
              ZStack {
                  Text("Status:")
                  
                  ProgressView("Status…", value: progress, total: 6)
                      .progressViewStyle(GaugeProgressStyle())
                      .frame(width: 200, height: 200)
                      .contentShape(Rectangle())
                      .padding()
              }
 
        LazyVGrid(columns: columns, spacing: 20) {
                  
            Image("ipadBasics")
                    .resizable()
                    .frame(width: 400, height: 200)
                    .overlay(
                        Image(systemName: "lock.circle.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                      )

            Image("troubleCloud")
                  .resizable()
                  .frame(width: 400, height: 200)
                  .overlay(
                      Image(systemName: "lock.circle.fill")
                          .font(.system(size: 80))
                          .foregroundColor(.white)
                          .shadow(radius: 4)
                    )
             
              Image("keynoteCloud")
                  .resizable()
                  .frame(width: 400, height: 200)
                  .overlay(
                      Image(systemName: "lock.circle.fill")
                          .font(.system(size: 80))
                          .foregroundColor(.white)
                          .shadow(radius: 4)
                    )
            
              Image("pagesCloud")
                  .resizable()
                  .frame(width: 400, height: 200)
                  .overlay(
                      Image(systemName: "lock.circle.fill")
                          .font(.system(size: 80))
                          .foregroundColor(.white)
                          .shadow(radius: 4)
                    )
            
              Image("numbersCloud")
                  .resizable()
                  .frame(width: 400, height: 200)
                  .overlay(
                      Image(systemName: "lock.circle.fill")
                          .font(.system(size: 80))
                          .foregroundColor(.white)
                          .shadow(radius: 4)
                    )
            
            Image("videoProdcloud")
                      .resizable()
                    .frame(width: 400, height: 200)
                    .overlay(
                        Image(systemName: "lock.circle.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                      )
              }
              Spacer()
              Spacer()
          }
          .padding(.horizontal)
          }
        
    }
}
#Preview {
    StatusView()
}

class StatusProgress: ObservableObject {
   
    @Published var ipadPassed: Bool
    @Published var troublePassed: Bool
    @Published var videoProdPassed: Bool
    @Published var pagesPassed: Bool
    @Published var keynotePassed: Bool
    @Published var numbersPassed: Bool
    @Published var progress: Int
    
    init(ipadPassed: Bool, troublePassed: Bool, videoProdPassed: Bool, pagesPassed: Bool, keynotePassed: Bool, numbersPassed: Bool, progress: Int) {
        
        self.ipadPassed = false
        self.troublePassed = false
        self.videoProdPassed = false
        self.pagesPassed = false
        self.keynotePassed = false
        self.numbersPassed = false
        self.progress = 0
    }
}
struct GaugeProgressStyle: ProgressViewStyle {
    var strokeColor = Color.orange
    var strokeWidth = 20.0

    func makeBody(configuration: Configuration) -> some View {
        let fractionCompleted = configuration.fractionCompleted ?? 0
            Circle()
            .trim(from: 0, to: fractionCompleted)
                .stroke(strokeColor, style: StrokeStyle(lineWidth: strokeWidth, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .frame(width: 120)

        
    }
}
