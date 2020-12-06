import SwiftUI

var openBox: String = "cat"
let sealedBox: String = "spider"

print(openBox) // cat
print(sealedBox) // spider

openBox = "dog"
print(openBox) // dog

sealedBox = "lizard" // Cannot modify constant value
