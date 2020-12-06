import SwiftUI

class MailRobot {
    var letter: String?
    
//    Case 1:
//    func mailLetter() {
//        let envelope: String = letter!
//        print("Envelope now contains a letter saying \"\(envelope)\"")
//    }
    
//    Case 2:
//    func mailLetter() {
//        guard let envelope: String = letter else {
//            print("Letter is empty.")
//            return
//        }
//        print("Envelope now contains a letter saying \"\(envelope)\"")
//    }
    
    // Case 3:
    func mailLetter() {
        if let envelope: String = letter {
            print("Envelope now contains a letter saying \"\(envelope)\"")
        } else {
            print("Letter is empty.")
        }
    }
}

let mailRobot: MailRobot = MailRobot()
mailRobot.letter = "Hello World"
mailRobot.mailLetter()
