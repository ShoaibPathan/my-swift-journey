import SwiftUI

var boolean: Bool               = true                  // true or false
var interger: Int               = 1                     // 1, 2, 3, 4, 5...
var decimal: Float              = 1.414                 // 1.1, 12.3, 129.3399, 2935.03345
var decimalLarge: Double        = 1.414                 // Can hold large numbers than floats and has double the precision
var text: String                = "Hello World"         // "I am a string if I'm inside quotation marks"
var multipleBooleans: [Bool]    = [true, false, true]
var intergerArray: [Int]        = [1, 2, 3, 4]

struct StoryBook {
    let title: String
}

struct GreenButton: View {
    var body: some View {
        Color(.systemGreen)
    }
}

var book: StoryBook = StoryBook(title: "Alice in Wonderland")
var button: GreenButton = GreenButton()
