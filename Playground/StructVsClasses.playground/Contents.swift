import SwiftUI

struct StoryBook {
    var title: String
    var author: String
    var year: Int
}

class ReadingRobot {
    var booksRead: Int = 10
    func read() {
        print("Once Upon a Time...")
        booksRead += 1
    }
}

class BabyRobot: ReadingRobot {
    func dance() {
        print("I'm dancing!")
    }
}

let yellowBook = StoryBook(title: "Alice in Wonderland", author: "Carroll", year: 1865)
var redBook = yellowBook
redBook.title = "Lord of the Flies"
redBook.title // Lord of the Flies
yellowBook.title // Alice in Wonderland

let narrator = ReadingRobot()
var storyteller = narrator
storyteller.read()
storyteller.booksRead // 11
narrator.booksRead // 11

let fancyRobot = BabyRobot()
fancyRobot.dance()
