import SwiftUI

struct LearnDetailView: View {
    var subtitle: String // Define a variable to hold the subtitle
    
    @StateObject private var learnService = LearnService()
    
    var body: some View {
        ZStack {
            BackgroundImage()
            Color.yellow
                .ignoresSafeArea()
                .opacity(0.4)
            
            VStack {
                // Use the provided subtitle variable instead of accessing .subtitle directly
                switch subtitle {
                case "Apps":
                    Text(subtitle)
                case "Control Center":
                    Text(subtitle)
                case "Spoken Text":
                    Text(subtitle)
                case "Notes":
                    Text(subtitle)
                default:
                    Text("Content for \(subtitle) goes here")
                }
                
                // You can add more content specific to the subtitle here if needed
                
                // Example:
                // Text("Some content specific to \(subtitle)")
            }
            .font(Font.custom("Truecat", size: 30))
            
        }
        
        
        TabView {
            LearnDetailView(subtitle: "Apps")
                .tabItem {
                    Label("Apps", systemImage: "apps.ipad")
                }
            LearnDetailView(subtitle: "Control Center")
                .tabItem {
                    Label("Control Center", systemImage: "gear")
                }
            LearnDetailView(subtitle: "Camera")
                .tabItem {
                    Label("Camera", systemImage: "camera")
                }
            LearnDetailView(subtitle: "Spoken Text")
                .tabItem {
                    Label("Spoken Text", systemImage: "speaker.wave.2.bubble.left.fill")
                }
            LearnDetailView(subtitle: "Notes")
                .tabItem {
                    Label("Notes", systemImage: "apps.ipad")
                }
            LearnDetailView(subtitle: "Translate")
                .tabItem {
                    Label("Translate", systemImage: "globe")
                }
        }
    }
}
