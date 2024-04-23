import AVKit
import SwiftUI

struct ContentView: View {
    
    @StateObject private var questionService = QuestionService()
    @State private var selectedLearn: Learn?
    
    var subtitles: [String]
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundImage()
                Color.indigo
                    .ignoresSafeArea()
                    .opacity(0.4)
                
                Group {
                  Image("cahill1")
                        .scaleEffect(1.5)
                        
                }
                .position(x: 650, y: 850)
                
                VStack {
                    Text("iPad Wizard")
                        .font(Font.custom("Truecat", size: 100))
                        .foregroundStyle(Color.indigo)
                        .shadow(color: .black, radius: 2)
                    
                    HStack {
                        NavigationLink(destination: LearnView(topic: .ipad, subtitles: subtitles, learnService: LearnService.init())) {
                            VStack {
                                Image("learnCloud")
                                    .resizable()
                                    .frame(width: 400, height: 200)
                            }
                            .foregroundColor(.green)
                        }
                        
                        NavigationLink(destination: TestView()) {
                            VStack {
                                Image("testCloud")
                                    .resizable()
                                    .frame(width: 400, height: 200)
                            }
                            .foregroundColor(.green)
                        }
                    }
                    
                    VStack {
                        NavigationLink(destination: StatusView(subject: .ipad)) {
                            VStack {
                                Image("statusCloud")
                                    .resizable()
                                    .frame(width: 400, height: 200)
                            }
                            .foregroundColor(.green)
                        }
                    }
                    Spacer()
                }
                
                Button{
                    //add code to go back here
                } label: {
                    HStack {
                        Image(systemName: "drop.circle")
                        Text("Go back to last location.")
                    }
                }
                .position(x: 200, y: 1000)
                .foregroundColor(.white)
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden()
    }
    
    let defaultLearn = Learn(title: "Default", subtitle: "Default", explore: "Default", exploreURL: "Default", dos: ["Default"], extends: ["Default"], topic: .ipad)
    
    func didSelectTopic(_ topic: Learn) {
        selectedLearn = topic
    }
}

#Preview {
    ContentView(subtitles: iPadSubtitles)
}
