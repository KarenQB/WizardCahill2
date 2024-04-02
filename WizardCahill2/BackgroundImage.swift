import SwiftUI

struct BackgroundImage: View {
    
    @State var animate: Bool = false
    let animation: Animation = Animation.linear(duration: 130.0).repeatForever(autoreverses: false)
    

    var body: some View {
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

#Preview {
    BackgroundImage()
}
