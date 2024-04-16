//
//  QuestionService.swift
//  WizardCahill
//
//  Created by Karen Seimears on 3/29/24.
//

import Foundation

class LearnService: ObservableObject {
    
    var learnBank = [Learn]()
    
    init() {
        loadLearns()
    }
    
    func loadLearns() {
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL: "https://support.appl.com/guide/ipad/move-apps-and-widgets-on-the-home-screen-ipadf6ea1ce5/ipados", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .ipad))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Control Center", explore: "Learn about editing and using the Control Center.", exploreURL:  "https://support.apple.com/guide/ipad/use-and-customize-control-center-ipade572ca56/17.0/ipados/17.0", dos: ["Customize your CC to include screen recording.", "Remove CC features you don't use.", "Add a timer to your CC.", "Create a screen recording with your mic on."], extends: ["Show a teacher how to customize CC.", "Connect to an Apple TV (with permission)."], topic: .ipad))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Camera", explore: "Learn about using your iPad's camera.", exploreURL:  "https://support.apple.com/guide/ipad/take-photos-ipad99b53a71/17.0/ipados/17.0", dos: ["Take a screen shot.", "Shoot a slo-mo & timelapse video. Notice the differences.", "Photograph something with text and copy the text to Notes.", "Lock your auto focuse and auto exposure."], extends: ["Add the grid to your camera.", "Explore the differences in live modes."], topic: .ipad))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .ipad))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .ipad))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .ipad))
        
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .troubleshooting))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .troubleshooting))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .troubleshooting))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .troubleshooting))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .troubleshooting))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .troubleshooting))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .troubleshooting))
        
        learnBank.append(Learn(title: "Troubleshooting", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .pages))
        
        learnBank.append(Learn(title: "Troubleshooting", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .pages))
        
        learnBank.append(Learn(title: "Troubleshooting", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .pages))
        
        learnBank.append(Learn(title: "Troubleshooting", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .pages))
        
        learnBank.append(Learn(title: "Troubleshooting", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .pages))
        
        learnBank.append(Learn(title: "Troubleshooting", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .pages))
        
        learnBank.append(Learn(title: "Troubleshooting", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .pages))
        
        
        
        learnBank.append(Learn(title: "Pages", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .numbers))
        
        learnBank.append(Learn(title: "Pages", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .numbers))
        
        learnBank.append(Learn(title: "Pages", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .numbers))
        
        learnBank.append(Learn(title: "Pages", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .numbers))
        
        learnBank.append(Learn(title: "Pages", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .numbers))
        
        learnBank.append(Learn(title: "Pages", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .numbers))
        
        
        
        learnBank.append(Learn(title: "Keynote", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .keynote))
        
        learnBank.append(Learn(title: "Keynote", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .keynote))
        
        learnBank.append(Learn(title: "Keynote", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .keynote))
        
        learnBank.append(Learn(title: "Keynote", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .keynote))
        
        learnBank.append(Learn(title: "Keynote", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .keynote))
        
        learnBank.append(Learn(title: "Keynote", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .keynote))
        
        learnBank.append(Learn(title: "Keynote", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .keynote))
        
        
        
        
        learnBank.append(Learn(title: "Numbers", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .videoProd))
        
        learnBank.append(Learn(title: "Numbers", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .videoProd))
        
        learnBank.append(Learn(title: "Numbers", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .videoProd))
        
        learnBank.append(Learn(title: "Numbers", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .videoProd))
        
        learnBank.append(Learn(title: "Numbers", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .videoProd))
        
        learnBank.append(Learn(title: "Numbers", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"], topic: .videoProd))
    }

          
    func sortLearnBank() {
        learnBank.sort { (learn1, learn2) -> Bool in
            let topic1 = learn1.topic
            let topic2 = learn2.topic
            
            if topic1 != topic2 {
                return topic1 < topic2
            } else {
                return learn1.subtitle < learn2.subtitle
            }
        }
    }
}
                        
