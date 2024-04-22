import SwiftUI

struct EndTestView: View {
    
    @AppStorage("tryScore") var tryScore: Double = 0.0
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        ZStack {
            BackgroundImage()
            Color.indigo
                .ignoresSafeArea()
                .opacity(0.4)
            
            Group {
                if tryScore >= 4 {
                    Image("success")
                        .resizable()
                } else {
                    Image("tryAgain")
                        .resizable()
                }
            }
            .frame(width: 1200, height: 1100)
            .position(x: 550, y: 820)
            
            VStack {
                Spacer()
                Text("RESULTS:")
                    .font(Font.custom("Truecat", size: 100))
                    .foregroundStyle(Color.indigo)
                    .shadow(color: .black, radius: 1)
                
                Text("4 points needed for \n an apprentice badge.")
                    .multilineTextAlignment(.center)
                    .font(.title)
                
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
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Return to Test")
                        .font(.title2)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.purple)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}
#Preview {
    EndTestView(tryScore: 0.0)
}
