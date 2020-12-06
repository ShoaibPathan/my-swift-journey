import SwiftUI

class BabyRobot {
    var secretCode: Int = 0
    
    func react() {
        if secretCode < 10 && secretCode > 0 {
            print("The code is a number from 1 to 9.")
        } else if secretCode == 0 && secretCode == 10 {
            print("The code is either 0 or 10.")
        } else {
            print("The code is a negative or is greater than 10.")
        }
    }
}

let babyRobot = BabyRobot()

babyRobot.secretCode = 0
babyRobot.react()
