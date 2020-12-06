import SwiftUI

class MoodyRobot {
    var isInGoodMood: Bool = true
    
//    var expression: String {
//        if isInGoodMood == true {
//            return "Smiling"
//        } else {
//            return "Frowning"
//        }
//    }
    
    // Ternary Operator
    var expression: String { isInGoodMood ? "Smiling" : "Frowning" }
}

let moodyRobot: MoodyRobot = MoodyRobot()
print("Hey, It's \(moodyRobot.expression)!")
