//
//  StatusView.swift
//  WizardCahill
//
//  Created by Karen Seimears on 3/29/24.
//
import SwiftUI

struct StatusView: View {
    
    @State private var progress = 4.1
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
          Image("wizard180")
              .resizable()
              .scaleEffect(0.5)
              .position(x: 800, y: 120)
               
          VStack {
              HStack {
                  ZStack {
                      Text("Status:")
                          .font(Font.custom("Truecat", size: 30))
                      
                      ProgressView("Status…", value: progress, total: 6)
                          .progressViewStyle(GaugeProgressStyle())
                          .frame(width: 200, height: 200)
                          .contentShape(Rectangle())
                          .padding()
                  }
                  Text("Status")
                      .foregroundStyle(Color.orange)
                      .shadow(color: .black, radius: 2)
                      .font(Font.custom("Truecat", size: 70))
                                    
              }.padding(.trailing, 160)
              Text("Once you have completed the test for each subject area, take the results to your librarian to for you final test to become a wizard like me!")
                  .font(Font.custom("Truecat", size: 24))
                  .multilineTextAlignment(.center)
                  .padding(.trailing, 160)
         
        
              
        LazyVGrid(columns: columns, spacing: 20) {
                  
            Image("ipadBasics")
                    .resizable()
                    .shadow(radius: 2)
                    .frame(width: 400, height: 200)
                    .overlay(
                        Image(systemName: "lock.circle.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 9)
                      )

            Image("troubleCloud")
                  .resizable()
                  .shadow(radius: 2)
                  .frame(width: 400, height: 200)
                  .overlay(
                      Image(systemName: "lock.circle.fill")
                          .font(.system(size: 80))
                          .foregroundColor(.white)
                          .shadow(color: .black, radius: 9)
                    )
             
              Image("keynoteCloud")
                  .resizable()
                  .shadow(radius: 2)
                  .frame(width: 400, height: 200)
                  .overlay(
                      Image(systemName: "lock.circle.fill")
                          .font(.system(size: 80))
                          .foregroundColor(.white)
                          .shadow(color: .black, radius: 9)
                    )
            
              Image("pagesCloud")
                  .resizable()
                  .shadow(radius: 2)
                  .frame(width: 400, height: 200)
                  .overlay(
                      Image(systemName: "lock.circle.fill")
                          .font(.system(size: 80))
                          .foregroundColor(.white)
                          .shadow(color: .black, radius: 9)
                    )
            
              Image("numbersCloud")
                  .resizable()
                  .shadow(radius: 2)
                  .frame(width: 400, height: 200)
                  .overlay(
                      Image(systemName: "lock.circle.fill")
                          .font(.system(size: 80))
                          .foregroundColor(.white)
                          .shadow(color: .black, radius: 9)
                    )
            
            Image("videoProdCloud")
                      .resizable()
                      .shadow(radius: 2)
                    .frame(width: 400, height: 200)
                    .overlay(
                        Image(systemName: "lock.circle.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 9)
                      )
              }
              Spacer()
              Spacer()
          }
          .padding(.horizontal, 20)
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
