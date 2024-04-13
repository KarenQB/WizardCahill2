
import Foundation


class QuestionService: ObservableObject {
    
    var questionBank = [Question]()
    
    init(){
        loadQuestions()
        
    }
    
    func loadQuestions() {
      
        questionBank.append(Question(title: "iPad Basics- Jokes", prompt: "How do you stop a car?", answers: ["Press and Hold- select Dock","Press and Drag to Dock","Press and Hold- Drag to Dock","Settings - General - Arrange Dock"], correctAnswer: "Press and Drag to Dock", subject: .ipad))
        
        questionBank.append(Question(title: "Video Production- Clips", prompt: "What is Clips", answers: ["Press and Hold- select Dock","Press and Drag to Dock","Press and Hold- Drag to Dock","Settings - General - Arrange Dock"], correctAnswer: "Press and Drag to Dock", subject: .videoProd))
        
        questionBank.append(Question(title: "Troubleshooting- Wifi", prompt: "What does the wifi symbol look like?", answers: ["Press and Hold- select Dock","Press and Drag to Dock","Press and Hold- Drag to Dock","Settings - General - Arrange Dock"], correctAnswer: "Press and Drag to Dock", subject: .troubleshooting))
        
        questionBank.append(Question(title: "Keynote- Formatting", prompt: "What is the feature that draws a line around an object?", answers: ["Press and Hold- select Dock","Press and Drag to Dock","Press and Hold- Drag to Dock","Settings - General - Arrange Dock"], correctAnswer: "Press and Drag to Dock", subject: .keynote))
        
        questionBank.append(Question(title: "Numbers- Charts", prompt: "What chart shows data in a circle with different percentages?", answers: ["Press and Hold- select Dock","Press and Drag to Dock","Press and Hold- Drag to Dock","Settings - General - Arrange Dock"], correctAnswer: "Press and Drag to Dock", subject: .numbers))
        
        questionBank.append(Question(title: "Pages- Exporting", prompt: "What format makes a Pages file open as a multitouch book in the Books app?", answers: ["Press and Hold- select Dock","Press and Drag to Dock","Press and Hold- Drag to Dock","Settings - General - Arrange Dock"], correctAnswer: "Press and Drag to Dock", subject: .pages))
    }
      
      func saveQuestions() {
          //save to user defaults
      }
      
      func randomQuestion() -> Question {
          if let question = questionBank.randomElement() {
              questionBank.removeAll(where: {$0.id == question.id})
              return question
          } else {
              return Question(title: "Error", prompt: "Error?", answers: ["1","2","3","4"], correctAnswer: "4", subject: .ipad)
          }
      }
  }
