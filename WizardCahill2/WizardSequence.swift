import SwiftUI

struct WizardSequence: View {
    
    @State var cahill: String
    
    init() {
        cahill = "cahill1"
    }
    
    var body: some View {
        VStack {
            Image(cahill)
                .onAppear(perform: timerCahill)
        }
    }
    
    func timerCahill() {
        var index = 1
        let timer = Timer.scheduledTimer(withTimeInterval: 0.14, repeats: true) { timer in
            cahill = "cahill\(index)"
            index += 1
            if index > 3 {
                index = 1
            }
        }
        RunLoop.current.add(timer, forMode: .common)
    }
}

struct WizardSequence_Previews: PreviewProvider {
    static var previews: some View {
        WizardSequence()
    }
}
