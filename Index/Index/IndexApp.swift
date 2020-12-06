//
//  IndexApp.swift
//  Index
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

@main
struct IndexApp: App {
    // MARK: - PROPERTIES
    @StateObject var model: IndexModel = IndexModel()
    
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
