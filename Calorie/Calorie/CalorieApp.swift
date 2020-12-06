//
//  CalorieApp.swift
//  Calorie
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

@main
struct CalorieApp: App {
    // MARK: - PROPERTIES
    @StateObject var model: CalorieModel = CalorieModel()
    
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
