import SwiftUI

class CookingRobot {
    func makeBreakfast(buyIngredients: () -> Void) {
        buyIngredients()
        print("I'm making breakfast now!")
    }
}

class ShoppingRobot {
    func buyGroceries() -> Void {
        print("I'm shopping for groceries for now!")
    }
}

// MARK: - MAKING BREACKFAST
let cookingRobot = CookingRobot()
let shoppingRobot = ShoppingRobot()

cookingRobot.makeBreakfast(buyIngredients: shoppingRobot.buyGroceries)

cookingRobot.makeBreakfast(buyIngredients: {
    print("I'm the cooking robot and I'm going to shop myself!")
})

cookingRobot.makeBreakfast() {
    print("I'm the cooking robot and I'm going to shop myself!")
}
