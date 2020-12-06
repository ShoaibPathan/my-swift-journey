//
//  Item.swift
//  Glasses
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

// MARK: - ITEMS DATA MODEL
struct Item: Identifiable {
    var id = UUID().uuidString
    var title: String
    var subTitle: String
    var price: String
    var rating: String
    var image: String
}

// MARK: - ITEMS DATA
var items = [
    Item(title: "Vincent Chase", subTitle: "Black Full Rim", price: "$36", rating: "3.8",image: "p1"),
    Item(title: "John Jacobs", subTitle: "Brown Tortoise", price: "$45", rating: "4.9",image: "p2"),
    Item(title: "Wood Black", subTitle: "Office Glass", price: "$84", rating: "4.2",image: "p3"),
    Item(title: "Vu Abstact", subTitle: "Fashion U", price: "$65", rating: "3.5",image: "p4"),
]
