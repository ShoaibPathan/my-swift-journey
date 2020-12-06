import SwiftUI

class CloneRobot {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let cloneRobotOne: CloneRobot = CloneRobot(name: "Luan")
let cloneRobotTwo: CloneRobot = CloneRobot(name: "Steve")
cloneRobotOne.name
cloneRobotTwo.name
