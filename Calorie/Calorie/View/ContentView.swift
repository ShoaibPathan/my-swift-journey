//
//  ContentView.swift
//  Calorie
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: CalorieModel
    
    @State var activeCardIndex: Int = 0
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Spacer()

            if activeCardIndex == 0 {
                TitleCard()
            }
            
            if activeCardIndex == 1 {
                GenderCard()
            }
            
            if activeCardIndex == 2 {
                AgeCard()
            }
            
            if activeCardIndex == 3 {
                HeightCard()
            }
            
            if activeCardIndex == 4 {
                WeightCard()
            }
            
            if activeCardIndex == 5 {
                ResultCard()
            }
            
            if activeCardIndex < 4 || activeCardIndex == 5 {
                NextButton(index: $activeCardIndex)
            } else {
                CalculateButton(index: $activeCardIndex)
            }
        } //: VSTACK
    }
}
