import SwiftUI

class TimeRobot {
    var timer: Timer?
    
    func initializeTimer() {
        // Phase 1
        timer = Timer.scheduledTimer(
            withTimeInterval: 1.0,
            repeats: true,
            block: {
                (_: Timer) -> Void in self.runTimerActions()
            }
        )
        
        // Phase 2
        timer = Timer.scheduledTimer(
            withTimeInterval: 1.0,
            repeats: true,
            block: {
                (timer: Timer) -> Void in self.runTimerActions()
            }
        )
        
        // Phase 3
        timer = Timer.scheduledTimer(
            withTimeInterval: 1.0,
            repeats: true,
            block: {
                (timer: Timer) in self.runTimerActions()
            }
        )
        
        // Phase 4
        timer = Timer.scheduledTimer(
            withTimeInterval: 1.0,
            repeats: true,
            block: {
                (timer) in self.runTimerActions()
            }
        )
        
        // Phase 5
        timer = Timer.scheduledTimer(
            withTimeInterval: 1.0,
            repeats: true,
            block: {
                timer in self.runTimerActions()
            }
        )
        
        // Phase 6
        timer = Timer.scheduledTimer(
            withTimeInterval: 1.0,
            repeats: true
        ) {
            timer in self.runTimerActions()
        }
    }
    
    func runTimerActions() {
        print("Hello, Timer!")
    }
}

let timeRobot = TimeRobot()
timeRobot.initializeTimer()
