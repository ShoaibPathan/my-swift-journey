import SwiftUI

var number: Int = 0
var magicOpenBox: String { "\(number)" + " cats" }

print(magicOpenBox) // 0 cats

number = 8

print(magicOpenBox) // 8 cats

number = 100

print(magicOpenBox) // 100 cats
