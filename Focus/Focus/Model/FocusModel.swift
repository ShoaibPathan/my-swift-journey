//
//  FocusModel.swift
//  Focus
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

class FocusModel: ObservableObject {
    // MARK: - PROPERTIES
    @Published var timerActive: Bool = false
    @Published var timeStart: Float = 0
    @Published var timeRemaining: Float = 0
    
    var timer: Timer?
    
    // MARK: - RUN TIMER
    func runFocusTimer(time: Float) {
        print("Timer activated!")
        invalidateTimer()
        initializeTimer(time: time)
    }
    
    // MARK: - RESET TIMER
    func resetFocusTimer() {
        print("Timer reset!")
        invalidateTimer()
    }
    
}

// MARK: - TIMEROBOT FUNCTIONS
extension FocusModel {
    
    func initializeTimer(time: Float) {
        timerActive = true
        timeStart = time
        timeRemaining = timeStart
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
            timer in self.runTimerActions()
        }
    }
    
    func invalidateTimer() {
        timerActive = false
        timer?.invalidate()
        timeStart = 0
        timeRemaining = 0
    }
    
    func runTimerActions() {
        if timeRemaining > 1 {
            reduceTime()
            checkRemainingTime()
        } else {
            invalidateTimer()
        }
    }
    
    func reduceTime() {
        timeRemaining -= 1
    }
    
    func checkRemainingTime() {
        print("Time remaining is \(timeRemaining)")
    }
}
