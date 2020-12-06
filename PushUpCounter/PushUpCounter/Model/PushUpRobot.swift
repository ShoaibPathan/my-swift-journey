//
//  PushUpRobot.swift
//  PushUpCounter
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

class PushUpRobot: ObservableObject {
    // MARK: - PROPERTIES
    @Published var completedPushUps: Int = 0
    
    // MARK: - ADD PUSH UP
    func addOnePushUp() {
        completedPushUps = completedPushUps + 1
        print("You have done \(completedPushUps) push-ups.")
    }
    
    // MARK: - RESET PUSH UP
    func resetPushUps() {
        completedPushUps = 0
    }
}
