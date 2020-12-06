//
//  ResultCard.swift
//  Index
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct ResultCard: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: IndexModel
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            CardBackground()
            
            VStack {
                CardLabel(title: "Result", caption: "Your Body Mass Index is")
                
                VStack {
                    Text(String(format: "%0.1f", model.resultBMI))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.systemGreen))
                    
                    Text("kg / m^2")
                        .font(.caption)
                        .padding(.top, 20)
                        .foregroundColor(Color(.systemGray))
                    
                    Text("\(model.message)")
                        .font(.caption)
                        .fontWeight(.bold)
                        .padding(.top, 10)
                        .foregroundColor(Color(.systemGray))
                } //: VSTACK
            } //: VSTACK
        } //: ZSTACK
        .frame(width: 300, height: 500)
    }
}
