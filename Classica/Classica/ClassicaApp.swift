//
//  ClassicaApp.swift
//  Classica
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

@main
struct ClassicaApp: App {
    // MARK: - PROPERTIES
    @StateObject var model: ClassicaModel = ClassicaModel()
    
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
                .onAppear {
                    UIApplication.shared.isIdleTimerDisabled = true
                }
                .onDisappear {
                    UIApplication.shared.isIdleTimerDisabled = false
                }
        }
    }
}
