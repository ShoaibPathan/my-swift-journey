//
//  FocusApp.swift
//  Focus
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

@main
struct FocusApp: App {
    // MARK: - PROPERTIES
    @StateObject var model: FocusModel = FocusModel()
    
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}
