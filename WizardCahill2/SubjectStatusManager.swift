//
//  SubjectStatusManager.swift
//  WizardCahill2
//
//  Created by Karen Seimears on 4/22/24.
//

import SwiftUI

class SubjectStatusManager: ObservableObject {
   
    
    private let ipadKey = "iPadPassed"
    private let troubleshootingKey = "TroubleshootingPassed"
    private let pagesKey = "PagesPassed"
    private let keynoteKey = "KeynotePassed"
    private let numbersKey = "NumbersPassed"
    private let videoProdKey = "VideoProdPassed"

    @Published var ipadPassed: Bool {
        didSet {
            UserDefaults.standard.set(ipadPassed, forKey: ipadKey)
        }
    }

    @Published var troubleshootingPassed: Bool {
        didSet {
            UserDefaults.standard.set(troubleshootingPassed, forKey: troubleshootingKey)
        }
    }

    @Published var pagesPassed: Bool {
        didSet {
            UserDefaults.standard.set(pagesPassed, forKey: pagesKey)
        }
    }

    @Published var keynotePassed: Bool {
        didSet {
            UserDefaults.standard.set(keynotePassed, forKey: keynoteKey)
        }
    }

    @Published var numbersPassed: Bool {
        didSet {
            UserDefaults.standard.set(numbersPassed, forKey: numbersKey)
        }
    }

    @Published var videoProdPassed: Bool {
        didSet {
            UserDefaults.standard.set(videoProdPassed, forKey: videoProdKey)
        }
    }

    init() {
        self.ipadPassed = UserDefaults.standard.bool(forKey: ipadKey)
        self.troubleshootingPassed = UserDefaults.standard.bool(forKey: troubleshootingKey)
        self.pagesPassed = UserDefaults.standard.bool(forKey: pagesKey)
        self.keynotePassed = UserDefaults.standard.bool(forKey: keynoteKey)
        self.numbersPassed = UserDefaults.standard.bool(forKey: numbersKey)
        self.videoProdPassed = UserDefaults.standard.bool(forKey: videoProdKey)
    }
    func isSubjectPassed(_ subject: Subject) -> Bool {
            switch subject {
            case .ipad:
                return ipadPassed
            case .troubleshooting:
                return troubleshootingPassed
            case .keynote:
                return keynotePassed
            case .pages:
                return pagesPassed
            case .numbers:
                return numbersPassed
            case .videoProd:
                return videoProdPassed
                
            case .Learn, .Test, .Status:
                       return false // Or handle these cases based on your app's logic
            }
        }

        func toggleSubjectStatus(_ subject: Subject) {
            switch subject {
            case .ipad:
                ipadPassed.toggle()
            case .troubleshooting:
                troubleshootingPassed.toggle()
            case .keynote:
                keynotePassed.toggle()
            case .pages:
                pagesPassed.toggle()
            case .numbers:
                numbersPassed.toggle()
            case .videoProd:
                videoProdPassed.toggle()
            case .Learn:
                break
            case .Test:
                break
            case .Status:
                break
            }
        }
}
