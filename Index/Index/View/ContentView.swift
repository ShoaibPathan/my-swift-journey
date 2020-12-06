//
//  ContentView.swift
//  Index
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: IndexModel
    
    @State var activeCardIndex: Int = 0
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            
            if activeCardIndex == 0 {
                TitleCard()
            }
            
            if activeCardIndex == 1 {
                UnitCard()
            }
            
            if activeCardIndex == 2 {
                HeightCard()
            }
            
            if activeCardIndex == 3 {
                WeightCard()
            }
            
            if activeCardIndex == 4 {
                ResultCard()
            }
            
            if activeCardIndex <= 2 || activeCardIndex == 4 {
                
                NextButton(activeCardIndex: $activeCardIndex)
                
            } else {
                
                CalculateButton(activeCardIndex: $activeCardIndex)
            }
        } //: VSTACK
    }
}
