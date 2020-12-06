import SwiftUI

enum Food {
    case peanutButterCookies
    case chocolateCake
    case vanillaPudding
}

enum Complaint: Error {
    case allergicToPeanuts
    case allergicToChocolate
}

class CustomerRobot {
    var plate: Food
    
    init(plate: Food) {
        self.plate = plate
    }
    
    func eat() throws {
        switch plate {
        case .peanutButterCookies:
            throw Complaint.allergicToPeanuts
        case .chocolateCake:
            throw Complaint.allergicToChocolate
        case .vanillaPudding:
            print("I like this!")
        }
    }
}

let customerRobot: CustomerRobot = CustomerRobot(plate: .peanutButterCookies)

do {
    try customerRobot.eat()
} catch Complaint.allergicToPeanuts {
    print("Customer is allergic to peanuts!")
} catch Complaint.allergicToChocolate {
    print("Customer is allergic to chocolate!")
}
