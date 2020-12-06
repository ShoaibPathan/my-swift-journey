//
//  ContentView.swift
//  PushUpCounter
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct ContentView: View {
    // MARK: PROPERTIES
    
    // MARK: BODY
    var body: some View {
        VStack {
            PushUpButton()
            WorkoutLabel()
        }
    }
}
