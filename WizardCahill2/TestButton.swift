
import SwiftUI

struct TestButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .font(.largeTitle)
            .bold()
            .foregroundStyle(configuration.isPressed ? .blue : .white)
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}


