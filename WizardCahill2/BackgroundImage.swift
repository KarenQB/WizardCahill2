import SwiftUI

struct BackgroundImage: View {
    
    @State var animate: Bool = false
    let animation: Animation = Animation.linear(duration: 30.0).repeatForever(autoreverses: false)
    
    
    var body: some View {
        ZStack {

            GeometryReader { geo in
                VStack {
                    Image("starsWide")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: geo.size.height, alignment: .leading)
                    
                    Image("starsWide")
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
