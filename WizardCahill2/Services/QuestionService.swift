
import Foundation


class QuestionService: ObservableObject {
    
    var questionBank = [Question]()
    var askedQuestions = [Question]()
    var currentQuestion: Question?
    var answered: Bool = false
    var correct: Bool = false
    
    init(){
        loadQuestions()
    }
    
    func randomQuestionForSubject(_ subject: Subject) -> Question? {
        let filteredQuestions = questionBank.filter { $0.subject == subject }
        return filteredQuestions.randomElement()
    }

    func fetchRandomQuestionForSubject(_ subject: Subject) -> Question? {
        var newQuestion = randomQuestionForSubject(subject)
        
        while let question = newQuestion, askedQuestions.contains(where: { $0.id == question.id }) {
            newQuestion = randomQuestionForSubject(subject)
        }
        
        if let question = newQuestion {
            currentQuestion = question
            askedQuestions.append(question)
            answered = false
            correct = false
        }
        
        return newQuestion // Add this return statement
    }
    
    func loadQuestions() {
        
        
        //ipad basics
        
        questionBank.append(Question(title: "iPad Basics- Dock", prompt: "How do you move apps into your dock?", answers: ["Press and Hold- select Dock","Press and Drag to Dock","Press and Hold- Drag to Dock","Settings - General - Arrange Dock"], correctAnswer: "Press and Drag to Dock", subject: .ipad))
        
        
        questionBank.append(Question(title: "iPad Basics- Apps", prompt: "What app do you use to install new apps?", answers: ["Self Service","App Store","Settings","You can't."], correctAnswer: "Self Service", subject: .ipad))
        
        questionBank.append(Question(title: "iPad Basics- Apps", prompt: "To organize your apps into similar groups:", answers: ["Separate them by pages","Drag them into folders","Rename them alphabetically","The layout is locked"], correctAnswer: "Drag them into folders", subject: .ipad))
        
        
        questionBank.append(Question(title: "iPad Basics", prompt: "Where do you find the mirror to Apple TV option?", answers: ["Projector","Self Service","Dock","Control Center"], correctAnswer: "Control Center", subject: .ipad))
        
        
        questionBank.append(Question(title: "iPad Basics- Camera", prompt: "When you hold your finger on the screen in camera mode, you:", answers: ["Take a screenshot","Record a live photo","Lock focus and exposure","Shut down the camera app"], correctAnswer: "Lock focus and exposure", subject: .ipad))
        
        
        questionBank.append(Question(title: "iPad Basics- Accessibility", prompt: "What is the features to have your iPad read text?", answers: ["Read Aloud","Spoken Content","Speak Text","Read to Me"], correctAnswer: "Spoken Content", subject: .ipad))
        
        
        questionBank.append(Question(title: "iPad Basics- Notes", prompt: "Which CANNOT be added to a note while in Notes?", answers: ["Photos","Videos","Charts","Drawings"], correctAnswer: "Charts", subject: .ipad))
        
        
        questionBank.append(Question(title: "iPad Basics- Notes", prompt: "How can you organize Notes?", answers: ["Separate them by pages","Organize with folders","Alphabetically","In files"], correctAnswer: "Organize with folders", subject: .ipad))
        
        
        questionBank.append(Question(title: "iPad Basics- Control Center", prompt: "What feature do you need to double check to add audio to screen recordings?", answers: ["Volume", "Audio", "Mircrophone", "Mute"], correctAnswer: "Mircrophone", subject: .ipad))
        
        
        questionBank.append(Question(title: "iPad Basics- Translate", prompt: "The iPad can translate into all of following languages except?", answers: ["Spanish", "French", "German", "Elvish"], correctAnswer: "Elvish", subject: .ipad))
        
        
        questionBank.append(Question(title: "iPad Basics- Languages", prompt: "What app is built in to the iPad for translating into various languages?", answers: ["Translate","Spoken Content","Settings","World Languages"], correctAnswer: "Translate", subject: .ipad))
        
        
        questionBank.append(Question(title: "iPad Basics- Notes", prompt: "How do you set the title of a Note?", answers: ["Swipe and Edit","The title is the first line","Change it in Files","Type it in bold"], correctAnswer: "The title is the first line", subject: .ipad))
        
        questionBank.append(Question(title: "iPad Basics- Notes", prompt: "Which item IS NOT in Control Center?", answers: ["Screen Mirroring","Bluetooth","Wifi","Drive"], correctAnswer: "Drive", subject: .ipad))
        
        questionBank.append(Question(title: "iPad Basics- Camera", prompt: "Which two buttons take a screenshot?", answers: ["Home and Volume up","Home and Volume down","Home and Power","Volume up and down"], correctAnswer: "Home and Power", subject: .ipad))
        
        
        //video production
        
        questionBank.append(Question(title: "Video Production- Clips", prompt: "How do I record video live in Clips?", answers: ["Use Camera app and move into Clips","Set timer to record when ready","Press and Hold Camera Icon","Press and Hold Red Button"], correctAnswer: "Press and Hold Red Button", subject: .videoProd))
        
        questionBank.append(Question(title: "Video Production", prompt: "Which app allows me to use green screen footage to create special effects?", answers: ["Clips","iMovie","Photos","Camera"], correctAnswer: "iMovie", subject: .videoProd))
        
        questionBank.append(Question(title: "Video Production", prompt: "Which app is the simplest to crop the size of my video?", answers: ["Clips","iMovie","Photos","Camera"], correctAnswer: "Photos", subject: .videoProd))
        
        questionBank.append(Question(title: "Video Production- Live Titles", prompt: "Once you record live titles, what is the last icon you press to edit the text on the screen?", answers: ["Star","Live Titles","Edit Text","Text Styles"], correctAnswer: "Edit", subject: .videoProd))
        
        questionBank.append(Question(title: "Video Production- Green Screen", prompt: "How do you get the option to add green screen footage as a different layer?", answers: ["Tap Add Green Screen Footage","Tap 3 Dots","Tap FX tab","Go to Overlays"], correctAnswer: "Tap 3 Dots", subject: .videoProd))
        
        questionBank.append(Question(title: "Video Production- Clips", prompt: "How do I record video live in Clips?", answers: ["Use Camera app and move into Clips","Set timer to record when ready","Press and Hold Camera Icon","Press and Hold Red Button"], correctAnswer: "Press and Hold Red Button", subject: .videoProd))
        
        questionBank.append(Question(title: "Video Production- Clips", prompt: "How do I record video live in Clips?", answers: ["Use Camera app and move into Clips","Set timer to record when ready","Press and Hold Camera Icon","Press and Hold Red Button"], correctAnswer: "Press and Hold Red Button", subject: .videoProd))
        
        questionBank.append(Question(title: "Video Production- Clips", prompt: "How do I record video live in Clips?", answers: ["Use Camera app and move into Clips","Set timer to record when ready","Press and Hold Camera Icon","Press and Hold Red Button"], correctAnswer: "Press and Hold Red Button", subject: .videoProd))
        
        questionBank.append(Question(title: "Video Production- Clips", prompt: "How do I record video live in Clips?", answers: ["Use Camera app and move into Clips","Set timer to record when ready","Press and Hold Camera Icon","Press and Hold Red Button"], correctAnswer: "Press and Hold Red Button", subject: .videoProd))
        
        questionBank.append(Question(title: "Video Production- Clips", prompt: "How do I record video live in Clips?", answers: ["Use Camera app and move into Clips","Set timer to record when ready","Press and Hold Camera Icon","Press and Hold Red Button"], correctAnswer: "Press and Hold Red Button", subject: .videoProd))
        
        questionBank.append(Question(title: "Video Production- Clips", prompt: "How do I record video live in Clips?", answers: ["Use Camera app and move into Clips","Set timer to record when ready","Press and Hold Camera Icon","Press and Hold Red Button"], correctAnswer: "Press and Hold Red Button", subject: .videoProd))
        
        
        // troubleshooting
        
        questionBank.append(Question(title: "Troubleshooting- Wifi", prompt: "What mode will turn off wifi automatically?", answers: ["Bluetooth Mode","Screen Mirror Mode","Airplane Mode","Voice Control Mode"], correctAnswer: "Airplane Mode", subject: .troubleshooting))
        
        questionBank.append(Question(title: "Troubleshooting- Wifi", prompt: "What mode will turn off wifi automatically?", answers: ["Bluetooth Mode","Screen Mirror Mode","Airplane Mode","Voice Control Mode"], correctAnswer: "Airplane Mode", subject: .troubleshooting))
        
        questionBank.append(Question(title: "Troubleshooting- Wifi", prompt: "What mode will turn off wifi automatically?", answers: ["Bluetooth Mode","Screen Mirror Mode","Airplane Mode","Voice Control Mode"], correctAnswer: "Airplane Mode", subject: .troubleshooting))
        
        questionBank.append(Question(title: "Troubleshooting- Wifi", prompt: "What mode will turn off wifi automatically?", answers: ["Bluetooth Mode","Screen Mirror Mode","Airplane Mode","Voice Control Mode"], correctAnswer: "Airplane Mode", subject: .troubleshooting))
        
        questionBank.append(Question(title: "Troubleshooting- Wifi", prompt: "What mode will turn off wifi automatically?", answers: ["Bluetooth Mode","Screen Mirror Mode","Airplane Mode","Voice Control Mode"], correctAnswer: "Airplane Mode", subject: .troubleshooting))
        
        questionBank.append(Question(title: "Troubleshooting- Wifi", prompt: "What mode will turn off wifi automatically?", answers: ["Bluetooth Mode","Screen Mirror Mode","Airplane Mode","Voice Control Mode"], correctAnswer: "Airplane Mode", subject: .troubleshooting))
        
        questionBank.append(Question(title: "Troubleshooting- Wifi", prompt: "What mode will turn off wifi automatically?", answers: ["Bluetooth Mode","Screen Mirror Mode","Airplane Mode","Voice Control Mode"], correctAnswer: "Airplane Mode", subject: .troubleshooting))
        
        questionBank.append(Question(title: "Troubleshooting- Wifi", prompt: "What mode will turn off wifi automatically?", answers: ["Bluetooth Mode","Screen Mirror Mode","Airplane Mode","Voice Control Mode"], correctAnswer: "Airplane Mode", subject: .troubleshooting))
        
        questionBank.append(Question(title: "Troubleshooting- Wifi", prompt: "What mode will turn off wifi automatically?", answers: ["Bluetooth Mode","Screen Mirror Mode","Airplane Mode","Voice Control Mode"], correctAnswer: "Airplane Mode", subject: .troubleshooting))
        
        questionBank.append(Question(title: "Troubleshooting- Wifi", prompt: "What mode will turn off wifi automatically?", answers: ["Bluetooth Mode","Screen Mirror Mode","Airplane Mode","Voice Control Mode"], correctAnswer: "Airplane Mode", subject: .troubleshooting))
        
        questionBank.append(Question(title: "Troubleshooting- Wifi", prompt: "What mode will turn off wifi automatically?", answers: ["Bluetooth Mode","Screen Mirror Mode","Airplane Mode","Voice Control Mode"], correctAnswer: "Airplane Mode", subject: .troubleshooting))
        
        questionBank.append(Question(title: "Troubleshooting- Wifi", prompt: "What mode will turn off wifi automatically?", answers: ["Bluetooth Mode","Screen Mirror Mode","Airplane Mode","Voice Control Mode"], correctAnswer: "Airplane Mode", subject: .troubleshooting))
        
        
        //keynote
        
        questionBank.append(Question(title: "Keynote- Formatting", prompt: "What is the feature that draws a line around an object?", answers: ["Reflection","Border","Chart","Outline"], correctAnswer: "Border", subject: .keynote))
        
        questionBank.append(Question(title: "Keynote- Formatting", prompt: "What is the feature that draws a line around an object?", answers: ["Reflection","Border","Chart","Outline"], correctAnswer: "Border", subject: .keynote))

        questionBank.append(Question(title: "Keynote- Formatting", prompt: "What is the feature that draws a line around an object?", answers: ["Reflection","Border","Chart","Outline"], correctAnswer: "Border", subject: .keynote))

        questionBank.append(Question(title: "Keynote- Formatting", prompt: "What is the feature that draws a line around an object?", answers: ["Reflection","Border","Chart","Outline"], correctAnswer: "Border", subject: .keynote))

        questionBank.append(Question(title: "Keynote- Formatting", prompt: "What is the feature that draws a line around an object?", answers: ["Reflection","Border","Chart","Outline"], correctAnswer: "Border", subject: .keynote))

        questionBank.append(Question(title: "Keynote- Formatting", prompt: "What is the feature that draws a line around an object?", answers: ["Reflection","Border","Chart","Outline"], correctAnswer: "Border", subject: .keynote))

        questionBank.append(Question(title: "Keynote- Formatting", prompt: "What is the feature that draws a line around an object?", answers: ["Reflection","Border","Chart","Outline"], correctAnswer: "Border", subject: .keynote))

        questionBank.append(Question(title: "Keynote- Formatting", prompt: "What is the feature that draws a line around an object?", answers: ["Reflection","Border","Chart","Outline"], correctAnswer: "Border", subject: .keynote))

        questionBank.append(Question(title: "Keynote- Formatting", prompt: "What is the feature that draws a line around an object?", answers: ["Reflection","Border","Chart","Outline"], correctAnswer: "Border", subject: .keynote))

        questionBank.append(Question(title: "Keynote- Formatting", prompt: "What is the feature that draws a line around an object?", answers: ["Reflection","Border","Chart","Outline"], correctAnswer: "Border", subject: .keynote))

        questionBank.append(Question(title: "Keynote- Formatting", prompt: "What is the feature that draws a line around an object?", answers: ["Reflection","Border","Chart","Outline"], correctAnswer: "Border", subject: .keynote))

        questionBank.append(Question(title: "Keynote- Formatting", prompt: "What is the feature that draws a line around an object?", answers: ["Reflection","Border","Chart","Outline"], correctAnswer: "Border", subject: .keynote))

        
        //numbers
        
        questionBank.append(Question(title: "Numbers- Charts", prompt: "What chart shows data in a circle with different percentages?", answers: ["Bar Chart","Pie Chart","Bubble Chart","Scatterplot"], correctAnswer: "Pie Chart", subject: .numbers))
        
        questionBank.append(Question(title: "Numbers- Charts", prompt: "What chart shows data in a circle with different percentages?", answers: ["Bar Chart","Pie Chart","Bubble Chart","Scatterplot"], correctAnswer: "Pie Chart", subject: .numbers))

        questionBank.append(Question(title: "Numbers- Charts", prompt: "What chart shows data in a circle with different percentages?", answers: ["Bar Chart","Pie Chart","Bubble Chart","Scatterplot"], correctAnswer: "Pie Chart", subject: .numbers))

        questionBank.append(Question(title: "Numbers- Charts", prompt: "What chart shows data in a circle with different percentages?", answers: ["Bar Chart","Pie Chart","Bubble Chart","Scatterplot"], correctAnswer: "Pie Chart", subject: .numbers))
        questionBank.append(Question(title: "Numbers- Charts", prompt: "What chart shows data in a circle with different percentages?", answers: ["Bar Chart","Pie Chart","Bubble Chart","Scatterplot"], correctAnswer: "Pie Chart", subject: .numbers))

        questionBank.append(Question(title: "Numbers- Charts", prompt: "What chart shows data in a circle with different percentages?", answers: ["Bar Chart","Pie Chart","Bubble Chart","Scatterplot"], correctAnswer: "Pie Chart", subject: .numbers))

        questionBank.append(Question(title: "Numbers- Charts", prompt: "What chart shows data in a circle with different percentages?", answers: ["Bar Chart","Pie Chart","Bubble Chart","Scatterplot"], correctAnswer: "Pie Chart", subject: .numbers))

        questionBank.append(Question(title: "Numbers- Charts", prompt: "What chart shows data in a circle with different percentages?", answers: ["Bar Chart","Pie Chart","Bubble Chart","Scatterplot"], correctAnswer: "Pie Chart", subject: .numbers))

        questionBank.append(Question(title: "Numbers- Charts", prompt: "What chart shows data in a circle with different percentages?", answers: ["Bar Chart","Pie Chart","Bubble Chart","Scatterplot"], correctAnswer: "Pie Chart", subject: .numbers))

        questionBank.append(Question(title: "Numbers- Charts", prompt: "What chart shows data in a circle with different percentages?", answers: ["Bar Chart","Pie Chart","Bubble Chart","Scatterplot"], correctAnswer: "Pie Chart", subject: .numbers))

        questionBank.append(Question(title: "Numbers- Charts", prompt: "What chart shows data in a circle with different percentages?", answers: ["Bar Chart","Pie Chart","Bubble Chart","Scatterplot"], correctAnswer: "Pie Chart", subject: .numbers))

        
        
        //pages
        
        questionBank.append(Question(title: "Pages- Formatting", prompt: "When trying to change the color of a shape, what should I do first?", answers: ["Go to Add Menu","Go to Shapes Menu","Select the shape","Go to the Format Brush"], correctAnswer: "Select the shape", subject: .pages))
        
        questionBank.append(Question(title: "Pages- Formatting", prompt: "When trying to change the color of a shape, what should I do first?", answers: ["Go to Add Menu","Go to Shapes Menu","Select the shape","Go to the Format Brush"], correctAnswer: "Select the shape", subject: .pages))

        questionBank.append(Question(title: "Pages- Formatting", prompt: "When trying to change the color of a shape, what should I do first?", answers: ["Go to Add Menu","Go to Shapes Menu","Select the shape","Go to the Format Brush"], correctAnswer: "Select the shape", subject: .pages))

        questionBank.append(Question(title: "Pages- Formatting", prompt: "When trying to change the color of a shape, what should I do first?", answers: ["Go to Add Menu","Go to Shapes Menu","Select the shape","Go to the Format Brush"], correctAnswer: "Select the shape", subject: .pages))

        questionBank.append(Question(title: "Pages- Formatting", prompt: "When trying to change the color of a shape, what should I do first?", answers: ["Go to Add Menu","Go to Shapes Menu","Select the shape","Go to the Format Brush"], correctAnswer: "Select the shape", subject: .pages))

        questionBank.append(Question(title: "Pages- Formatting", prompt: "When trying to change the color of a shape, what should I do first?", answers: ["Go to Add Menu","Go to Shapes Menu","Select the shape","Go to the Format Brush"], correctAnswer: "Select the shape", subject: .pages))

        questionBank.append(Question(title: "Pages- Formatting", prompt: "When trying to change the color of a shape, what should I do first?", answers: ["Go to Add Menu","Go to Shapes Menu","Select the shape","Go to the Format Brush"], correctAnswer: "Select the shape", subject: .pages))

        questionBank.append(Question(title: "Pages- Formatting", prompt: "When trying to change the color of a shape, what should I do first?", answers: ["Go to Add Menu","Go to Shapes Menu","Select the shape","Go to the Format Brush"], correctAnswer: "Select the shape", subject: .pages))

        questionBank.append(Question(title: "Pages- Formatting", prompt: "When trying to change the color of a shape, what should I do first?", answers: ["Go to Add Menu","Go to Shapes Menu","Select the shape","Go to the Format Brush"], correctAnswer: "Select the shape", subject: .pages))

        questionBank.append(Question(title: "Pages- Formatting", prompt: "When trying to change the color of a shape, what should I do first?", answers: ["Go to Add Menu","Go to Shapes Menu","Select the shape","Go to the Format Brush"], correctAnswer: "Select the shape", subject: .pages))

        questionBank.append(Question(title: "Pages- Formatting", prompt: "When trying to change the color of a shape, what should I do first?", answers: ["Go to Add Menu","Go to Shapes Menu","Select the shape","Go to the Format Brush"], correctAnswer: "Select the shape", subject: .pages))

        
    }
    
    func saveQuestions() {
        //save to user defaults
    }
    
}
