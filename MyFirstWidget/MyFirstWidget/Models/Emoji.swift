//
//  Emoji.swift
//  MyFirstWidget
//
//  Created by Luan Nguyen on 07/12/2020.
//

import Foundation

struct Emoji: Identifiable, Codable {
    let icon: String
    let name: String
    let description: String
    
    var id: String { icon }
}
