//
//  CardView.swift
//  ComplexShapesAndCurves
//
//  Created by Luan Nguyen on 09/12/2020.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    var server: Server
    var subTitle: String
    
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 15) {
            Image(server.flag)
                .resizable()
                .frame(width: 45, height: 45)
            
            VStack(alignment: .leading, spacing: 4, content: {
                Text(server.name)
                    .font(.system(size: 22))
                    .foregroundColor(.black)
                
                if subTitle != "" {
                    Text(subTitle)
                        .foregroundColor(.gray)
                }
            }) //: VSTACK
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.system(size: 24))
                .foregroundColor(.black)
        } //: HSTACK
        .padding(.leading,10)
        .padding(.trailing)
        .padding(.vertical)
    }
}
