import SwiftUI

struct BackgroundImage: View {
    
    @State var animate: Bool = false
    let animation: Animation = Animation.linear(duration: 130.0).repeatForever(autoreverses: false)
    
    
    var body: some View {
        ZStack {
            Color.indigo
                .opacity(0.6)
                .ignoresSafeArea()
           
            Image("3clouds")
                .resizable()
                .scaledToFit()
                .position(CGPoint(x: 430.0, y: 300.0))
            
            GeometryReader { geo in
                VStack(spacing: -1) {
                    Image("stars")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Image("stars")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width, alignment: .leading)
                }
                .frame(width: geo.size.width, height: geo.size.height,
                       alignment: animate ? .bottom : .top)
            }
            .ignoresSafeArea()
            .onAppear {
                withAnimation(animation) {
                    animate.toggle()
                }
            }
        }
    }
}
#Preview {
    BackgroundImage()
}
