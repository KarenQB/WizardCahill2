//
//  QuestionService.swift
//  WizardCahill
//
//  Created by Karen Seimears on 3/29/24.
//

import Foundation

class LearnService: ObservableObject {
    
    var learnBank = [Learn]()
    
    init(){
        loadQuestions()
        
    }
   
    func loadQuestions() {
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "iPad Basics", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        
        
        learnBank.append(Learn(title: "Video Production", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Video Production", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Video Production", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Video Production", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Video Production", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Video Production", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Video Production", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        
        
        
        learnBank.append(Learn(title: "Troubleshooting", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Troubleshooting", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Troubleshooting", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Troubleshooting", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Troubleshooting", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Troubleshooting", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Troubleshooting", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        
        
        learnBank.append(Learn(title: "Pages", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Pages", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Pages", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Pages", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Pages", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Pages", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        
        
        
        learnBank.append(Learn(title: "Keynote", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Keynote", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Keynote", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Keynote", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Keynote", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Keynote", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Keynote", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        
        
        
        learnBank.append(Learn(title: "Numbers", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Numbers", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Numbers", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Numbers", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Numbers", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        learnBank.append(Learn(title: "Numbers", subtitle: "Apps", explore: "Learn about managing your apps on the iPad here.", exploreURL:  "https://www.stackoverflow.com", dos: ["Put the apps you use the most in your dock.", "Make a folder of similar apps.", "Rename your folder to represent those apps.", "Go to Self-Service and install an app you don’t have."], extends: ["Can you switch between apps using a gesture?", "Can you force close an app that isn’t working?"]))
        
        
        }
}
