//
//  ContentView.swift
//  MyFirstWatchOSApp WatchKit Extension
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var currentCount = UserDefaults.standard.integer(forKey: "currentCount")
    @State private var isDecrementOn = false
    
    // MARK: - BODY
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 10) {
                HStack(alignment: .center, spacing: 20) {
                    // MARK: - BUTTON MINUS OR PLUS
                    Button(action: {
                        self.isDecrementOn.toggle()
                    }) {
                        Image(systemName: isDecrementOn ? "minus" : "plus")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .aspectRatio(contentMode: .fit)
                    }
                    
                    // MARK: - BUTTON TRASH
                    Button(action: {
                        self.currentCount = 0
                        UserDefaults.standard.setValue(0, forKey: "currentCount")
                    }) {
                        Image(systemName: "trash")
                            .font(.headline)
                            .foregroundColor(.red)
                            .aspectRatio(contentMode: .fit)
                    }
                } //: HSTACK
                
                // MARK: - BUTTON CURRENT COUNT
                Button(action: {
                    self.performMaths(isSubstract: self.isDecrementOn, num: 1)
                }) {
                    Text("\(self.currentCount)")
                        .font(.title)
                }
                
                // MARK: - BUTTON CHOOSE
                ScrollView(.horizontal) {
                    HStack(alignment: .center, spacing: 10) {
                        // BUTTON 1
                        Button(action: {
                            self.performMaths(isSubstract: self.isDecrementOn, num: 1)
                        }) {
                            Text(isDecrementOn ? "-1" : "+1")
                        }
                        
                        // BUTTON 2
                        Button(action: {
                            self.performMaths(isSubstract: self.isDecrementOn, num: 2)
                        }) {
                            Text(isDecrementOn ? "-2" : "+2")
                        }
                        
                        // BUTTON 3
                        Button(action: {
                            self.performMaths(isSubstract: self.isDecrementOn, num: 3)
                        }) {
                            Text(isDecrementOn ? "-3" : "+3")
                        }
                        
                        // BUTTON 4
                        Button(action: {
                            self.performMaths(isSubstract: self.isDecrementOn, num: 4)
                        }) {
                            Text(isDecrementOn ? "-4" : "+4")
                        }
                        
                        // BUTTON 5
                        Button(action: {
                            self.performMaths(isSubstract: self.isDecrementOn, num: 5)
                        }) {
                            Text(isDecrementOn ? "-5" : "+5")
                        }
                        
                        // BUTTON 6
                        Button(action: {
                            self.performMaths(isSubstract: self.isDecrementOn, num: 10)
                        }) {
                            Text(isDecrementOn ? "-10" : "+10")
                                .frame(width: 50)
                        }
                    }
                } //: SCROLLVIEW
            } //: VSTACK
            .padding(.all)
        } //: SCROLLVIEW
    }
    
    // MARK: - MATHS
    func performMaths(isSubstract: Bool, num: Int) {
        var result = self.currentCount
        
        if isSubstract == true {
            result -= num
        } else {
            result += num
        }
        
        if result >= 0 {
            currentCount = result
            UserDefaults.standard.set(currentCount, forKey: "currentCount")
        }
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
