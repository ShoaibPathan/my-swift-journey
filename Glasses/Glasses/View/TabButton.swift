//
//  TabButton.swift
//  Glasses
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct TabButton: View {
    // MARK: - PROPERTIES
    var title: String
    @Binding var selected: String
    var animation: Namespace.ID
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            withAnimation(.spring()){selected = title}
        }) {
            Text(title)
                .font(.system(size: 15))
                .fontWeight(.bold)
                .foregroundColor(selected == title ? .white : .black)
                .padding(.vertical,10)
                .padding(.horizontal,selected == title ? 20 : 0)
                .background(
                    ZStack {
                        if selected == title{
                            Color.black
                                .clipShape(Capsule())
                                .matchedGeometryEffect(id: "Tab", in: animation)
                        }
                    } //: ZSTACK
                )
        }
    }
}
