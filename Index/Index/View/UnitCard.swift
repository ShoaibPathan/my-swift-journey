//
//  UnitCard.swift
//  Index
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct UnitCard: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: IndexModel
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            CardBackground()
            
            VStack {
                CardLabel(title: "Unit", caption: "Select Unit Type")
                
                Picker("Unit", selection: $model.unit) {
                    Text("Metric").tag(Unit.metric)
                    Text("Imperial").tag(Unit.imperial)
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 150)
            } //: VSTACK
        } //: ZSTACK
        .frame(width: 300, height: 500)
    }
}
