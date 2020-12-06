//
//  MyFirstWatchOSAppApp.swift
//  MyFirstWatchOSApp WatchKit Extension
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

@main
struct MyFirstWatchOSAppApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
