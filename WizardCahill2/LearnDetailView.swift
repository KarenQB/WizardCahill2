import AVKit
import SwiftUI

struct LearnDetailView: View {
    var topic: Topics
    var subtitles: [String]
    let allTopics = Topics.allTopics
    
    
    @StateObject private var learnService = LearnService()
    
    @State private var selectedSubtitleIndex = 0
    @State private var filteredLearn: [Learn] = []
    
    @State private var currentLearn: Learn = Learn(title: "Text", subtitle: "Text", explore: "test", exploreURL: "test", dos: ["Test"], extends: ["Test"], topic: .ipad)
    
    var selectedSubtitle: String {
        return subtitles[selectedSubtitleIndex]
    }
    
    var body: some View {
        ZStack {
            BackgroundImage()
            
            Group {
                if currentLearn.topic == .ipad {
                    Color.indigo
                }
                if currentLearn.topic == .troubleshooting {
                    Color.pink
                }
                if currentLearn.topic == .keynote {
                    Color.blue
                }
                if currentLearn.topic == .pages {
                    Color.orange
                }
                if currentLearn.topic == .numbers {
                    Color.green
                }
                if currentLearn.topic == .videoProd {
                    Color.yellow
                }
            }.ignoresSafeArea()
                .opacity(0.4)
            
            VStack {
                VStack {
                    Text(selectedSubtitle)
                        .font(Font.custom("Truecat", size: 80))
                    
                    Text("This should be the video name -\(currentLearn.topic)-\(selectedSubtitle)-")
                    
                    VStack {
                        VStack(alignment: .leading) {
                            Text(currentLearn.title)
                                .font(Font.custom("Truecat", size: 40))
                                .padding()
                            HStack {
                                Text(currentLearn.explore)
                                
                                Button(action: {
                                    if let url = URL(string: currentLearn.exploreURL) {
                                        UIApplication.shared.open(url)
                                    }
                                }) {
                                    Image(systemName: "wand.and.stars")
                                }
                            }
                            .font(.title)
                            .frame(width: 700)
                            .padding()
                            .cornerRadius(8)
                        }
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Do This:")
                                    .font(Font.custom("Truecat", size: 40))
                                    .padding()
                                ForEach(Array(currentLearn.dos.enumerated()), id: \.1) { index, dos in
                                    Text("\(index + 1). \(dos)")
                                        .lineLimit(nil)
                                }
                                .font(.title)
                                .padding(.bottom, 5)
                            }
                            .cornerRadius(8)
                            .padding()
                            
                            Spacer()
                            
                            VideoView(videoName: "ipad-apps")
                                .scaleEffect(0.6)               .frame(width: 600)
                                .position(x: 200, y: 300)
                            
                        }
                        VStack {
                            VStack(alignment: .leading) {
                                Text("Extend it:")
                                    .font(Font.custom("Truecat", size: 40))
                                    .padding()
                                ForEach(Array(currentLearn.extends.enumerated()), id: \.1) { index, extends in
                                    Text("🤔 \(extends)")
                                }
                                .font(.title)
                                .padding(.bottom, 2)
                            }
                            .padding()
                            .cornerRadius(8)
                            .padding()
                        }
                    }
                    
                }
                
                Spacer()
                
                VStack {
                    Picker(selection: $selectedSubtitleIndex, label: Text("Select a topic to explore")) {
                        ForEach(0..<subtitles.count, id: \.self) { index in
                            Text(subtitles[index])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(50)
                    .onChange(of: selectedSubtitleIndex) {
                        updateFilteredLearn()
                        
                    }
                }
            }
            .onAppear() {
                
                updateFilteredLearn()
                
                
            }
            
        }
        
    }
    func updateFilteredLearn() {
        filteredLearn.removeAll()
        filteredLearn = learnService.learnBank.filter { $0.subtitle == selectedSubtitle }
        if filteredLearn.count > 0 {
            currentLearn = filteredLearn.first!
        }
    }
}
    
#Preview {
    LearnDetailView(topic: .ipad, subtitles: iPadSubtitles)
}

struct VideoView: View {
    
    let videoName: String
       let avPlayer: AVPlayer
       
       @State private var isPlaying = true
       
       init(videoName: String) {
           self.videoName = videoName
           guard let videoURL = Bundle.main.url(forResource: videoName, withExtension: "mov") else {
               fatalError("Couldn't find video file: \(videoName)")
           }
           self.avPlayer = AVPlayer(url: videoURL)
           self.avPlayer.playImmediately(atRate: 3.0)

       }
       
       var body: some View {
           VStack {
               VideoPlayer(player: avPlayer)
                   .onAppear() {
                       if isPlaying {
                           avPlayer.play()
                       }
                   }
                   .onDisappear() {
                       avPlayer.pause()
                   }
               
               Button(action: {
                   avPlayer.seek(to: .zero)
                   avPlayer.play()
                   isPlaying = true
               }) {
                   HStack {
                       Image(systemName: "autostartstop")
                       Text("Restart Video")
                   }
               }
               .padding()
           }
       }
   }
