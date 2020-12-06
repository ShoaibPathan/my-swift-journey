import SwiftUI

class BabyRobot {
    var secretCode: Int = 0
    
    func react() {
        if secretCode == 0 {
            print("I already know that!")
        } else if secretCode >= 1 {
            print("BAHAHAHAHA!")
        } else if secretCode > 2 {
            print("No Way!")
        } else {
            print("Tell me the code!")
        }
    }
}

let babyRobot = BabyRobot()

babyRobot.secretCode = 0
babyRobot.react()
