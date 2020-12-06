import SwiftUI

class BabyRobot {
    func spin() {
        print("You spin my head right around...")
    }
    
    func dance() {
        print("I'm dancing, baby!")
    }
    
    func bounce() {
        print("I'm bouncing, baby!")
    }
    
    func perform() {
        spin()
        dance()
        bounce()
    }
    
    func walk(numberOfSteps: Int) {
        print("I'm walking \(numberOfSteps) steps!")
    }
    
    func sing(lyrics: String) -> String {
        let song: String = "Ooh lala... \(lyrics) ooh lala..."
        return song
    }
}

var babyRobot: BabyRobot = BabyRobot()
babyRobot.bounce()
babyRobot.perform()
babyRobot.walk(numberOfSteps: 8)

var performance: String = babyRobot.sing(lyrics: "Making my way downtown")
