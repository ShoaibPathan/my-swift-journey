//
//  EmojiView.swift
//  MyFirstWidget
//
//  Created by Luan Nguyen on 07/12/2020.
//

import SwiftUI

struct EmojiView: View {
    // MARK: - PROPERTIES
    let emoji: Emoji
    
    // MARK: - BODY
    var body: some View {
        Text(emoji.icon)
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
            .clipShape(Circle())
    }
}
