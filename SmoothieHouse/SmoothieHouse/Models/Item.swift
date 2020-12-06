//
//  Item.swift
//  SmoothieHouse
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

// MARK: - ITEMS DATA MODEL
struct Item: Identifiable {
    var id = UUID().uuidString
    var title: String
    var cost: String
    var image: String
}

// MARK: - ITEMS DATA
var items = [
    Item(title: "Orange Juice Shake", cost: "$6", image: "shake1"),
    Item(title: "Strawberry Juice Shake", cost: "$10", image: "shake2")
]
