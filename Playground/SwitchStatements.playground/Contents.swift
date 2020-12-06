import SwiftUI

class ChoosyRobot {
    var sushi: Int = 1
    var voiceMessage: String = ""
    
    func eat() {
        switch sushi {
        case ...0:
            voiceMessage = "I got no sushi"
        case 1:
            voiceMessage = "Just one sushi???"
        case 2:
            voiceMessage = "I think I'm full already."
        case 3:
            voiceMessage = "Are you kidding me!?"
        case 4:
            voiceMessage = "Maybe I can eat all of this."
        case 5..<10:
            voiceMessage = "So this is heaven..."
        case 11...100:
            voiceMessage = "That's a lot of sushi!!!"
        default:
            voiceMessage = "I got some sushi"
        }
        
        print(voiceMessage)
    }
}

let choosyRobot: ChoosyRobot = ChoosyRobot()
choosyRobot.sushi = 1
choosyRobot.eat()
