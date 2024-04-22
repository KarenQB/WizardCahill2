//
//  SubjectStatusManager.swift
//  WizardCahill2
//
//  Created by Karen Seimears on 4/22/24.
//

import Foundation
import SwiftUI

class SubjectStatusManager: ObservableObject {
    @Published var subjectStatus: [Subject: Bool] = [:]
    
    init() {
        // Initialize the status for each subject
        Subject.allCases.forEach { subject in
            subjectStatus[subject] = false // Default to false
        }
    }
}
