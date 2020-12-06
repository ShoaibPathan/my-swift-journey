import SwiftUI

struct StoryBook {
    let title: String
    let author: String
    let year: Int
}

let redBook = StoryBook(title: "Alice in Wonderland", author: "Carroll", year: 1865)
let blueBook = StoryBook(title: "Catcher in the Rye", author: "Salinger", year: 1951)
let greenBook = StoryBook(title: "The Wonderful Wizard of Oz", author: "Baum", year: 1900)
let yellowBook = StoryBook(title: "Hooks", author: "Nir Eyal", year: 2014)

yellowBook.title // Hooks
yellowBook.author // Nir Eyal
yellowBook.year // 2014


