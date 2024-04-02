
import Foundation


class QuestionService: ObservableObject {
    
    var questionBank = [Question]()
    
    init(){
        loadQuestions()
        
    }
    
    func loadQuestions() {
      
        questionBank.append(Question(title: "iPad Basics- Jokes", prompt: "How do you stop a car?", answers: ["Press and Hold- select Dock","Press and Drag to Dock","Press and Hold- Drag to Dock","Settings - General - Arrange Dock"], correctAnswer: "Press and Drag to Dock"))
        
        questionBank.append(Question(title: "iPad Basics- Moms", prompt: "Whos the coolest?", answers: ["Press and Hold- select Dock","Press and Drag to Dock","Press and Hold- Drag to Dock","Settings - General - Arrange Dock"], correctAnswer: "Press and Drag to Dock"))
        
        questionBank.append(Question(title: "iPad Basics- Boys", prompt: "Who is the best one?", answers: ["Press and Hold- select Dock","Press and Drag to Dock","Press and Hold- Drag to Dock","Settings - General - Arrange Dock"], correctAnswer: "Press and Drag to Dock"))
        
        questionBank.append(Question(title: "iPad Basics- Church", prompt: "What are we celebrating?", answers: ["Press and Hold- select Dock","Press and Drag to Dock","Press and Hold- Drag to Dock","Settings - General - Arrange Dock"], correctAnswer: "Press and Drag to Dock"))
    }
      
      func saveQuestions() {
          //save to user defaults
      }
      
      func randomQuestion() -> Question {
          if let question = questionBank.randomElement() {
              questionBank.removeAll(where: {$0.id == question.id})
              return question
          } else {
              return Question(title: "Error", prompt: "Error?", answers: ["1","2","3","4"], correctAnswer: "4")
          }
      }
  }
