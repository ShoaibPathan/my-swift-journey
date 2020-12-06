import SwiftUI

enum Food {
    case nachos
    case pizza
    case smoothie
    case sushi
    case bread
}

class ChoosyRobot {
    var plate: Food = Food.nachos
    
    func eat() {
        switch plate {
            case Food.nachos:
                print("OF COURSE I'll eat that!")
            case Food.pizza:
                print("How about...NO.")
            case Food.smoothie:
                print("That's a lot of carbs in there...")
            case Food.sushi:
                print("can you COOK it?")
            case Food.bread:
                print("OOh I like bread!")
        }
        
        func inspect() {
            print("The plate has \(plate) in it!")
        }
    }
}

let choosyRobot: ChoosyRobot = ChoosyRobot()
choosyRobot.plate = Food.sushi
choosyRobot.eat()
