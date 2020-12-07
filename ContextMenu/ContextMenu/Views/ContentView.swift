//
//  ContentView.swift
//  ContextMenu
//
//  Created by Luan Nguyen on 07/12/2020.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var cardType = "♥️"
    
    // MARK: - BODY
    var body: some View {
        CardView(cardType: $cardType)
            .contextMenu {
                Button("♥️ - Hearts", action: changeCardToHearts)
                Button("♦️ - Diamond", action: changeCardToDiamond)
            }
    }
    
    // MARK: - CHANGE CARD
    func changeCardToHearts() {
        cardType = "♥️"
    }
    
    func changeCardToDiamond() {
        cardType = "♦️"
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
