import SwiftUI

struct TestButton: ButtonStyle {
    let questionService = QuestionService()

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .font(.largeTitle)
            .bold()
            .background(
                Capsule()
                    .fill(questionService.answered ? Color.white : Color.purple)
                    )
            .foregroundStyle(configuration.isPressed ? Color.purple : .black)
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
