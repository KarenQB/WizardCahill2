//
//  StatusView.swift
//  WizardCahill
//
//  Created by Karen Seimears on 3/29/24.
//

import SwiftUI

struct StatusView: View {
    var body: some View {
        ZStack {
            BackgroundImage()
                .colorMultiply(.orange)
            Color.yellow
                .ignoresSafeArea()
                .opacity(0.5)
        }
    }
}
#Preview {
    StatusView()
}
