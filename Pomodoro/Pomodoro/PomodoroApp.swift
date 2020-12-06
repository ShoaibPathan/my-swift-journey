//
//  PomodoroApp.swift
//  Pomodoro
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

@main
struct PomodoroApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(PomodoroModel())
        }
    }
}
