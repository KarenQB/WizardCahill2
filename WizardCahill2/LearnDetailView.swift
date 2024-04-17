import SwiftUI

struct LearnDetailView: View {
    var topic: Topics
    var subtitles: [String]
    let allTopics = Topics.allTopics
    var learn: [Learn]
    
    @StateObject private var learnService = LearnService()

    @State private var selectedSubtitleIndex = 0
    @State private var filteredLearn: [Learn] = []
    
    var selectedSubtitle: String {
        return subtitles[selectedSubtitleIndex]
    }
    
    var body: some View {
        ZStack {
            BackgroundImage()
            Color.yellow
                .ignoresSafeArea()
                .opacity(0.4)
            
            VStack {
                VStack {
                    Text(selectedSubtitle)
                        .font(Font.custom("Truecat", size: 80))
                    
                    ForEach(filteredLearn, id: \.id) { learn in
                        VStack(alignment: .leading) {
                            Text(learn.title)
                                .font(Font.custom("Truecat", size: 40))
                                .padding()
                            HStack {
                                Text(learn.explore)
                                
                                Button(action: {
                                    if let url = URL(string: learn.exploreURL) {
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
                                ForEach(Array(learn.dos.enumerated()), id: \.1) { index, dos in
                                    Text("\(index + 1). \(dos)")
                                }
                                .font(.title)
                                .padding(.bottom, 5)
                            }
                            .padding()
                            .cornerRadius(8)
                            .padding()
                            
                            Spacer()
                            
                            Image("cahill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 400)
                        }
                        VStack {
                            VStack(alignment: .leading) {
                                Text("Extend it:")
                                    .font(Font.custom("Truecat", size: 40))
                                    .padding()
                                ForEach(Array(learn.extends.enumerated()), id: \.1) { index, extends in
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
                }
            }
        }
        
    }
    func updateFilteredLearn() {
            filteredLearn = learnService.learnBank.filter { $0.subtitle == selectedSubtitle }
        print(SubtitleView(selectedTopic: .ipad, subtitles: []))
        }
}
