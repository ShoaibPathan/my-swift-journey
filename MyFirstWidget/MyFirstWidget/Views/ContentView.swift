//
//  ContentView.swift
//  MyFirstWidget
//
//  Created by Luan Nguyen on 07/12/2020.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    let emojis = [
        Emoji(icon: "😀", name: "Happy", description: "This means the user is about that life!"),
        Emoji(icon: "😐", name: "Stare", description: "That just happened; right here in front of me..."),
        Emoji(icon: "🤬", name: "Heated", description: "Completely done with your ish Karen!"),
    ]
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 30) {
            ForEach(emojis) { emoji in
                EmojiView(emoji: emoji)
                    .onTapGesture {
                        save(emoji)
                    }
            }
        }
    }
    
    // MARK: - SAVE
    func save(_ emoji: Emoji) {
        print("Save \(emoji)")
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
