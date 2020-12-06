//
//  ItemView.swift
//  SmoothieHouse
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct ItemView: View {
    // MARK: - PROPERTIES
    var item: Item
    
    // MARK: - BODY
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .center), content: {
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 4, content: {
                        Text(item.title)
                            .fontWeight(.heavy)
                        Text(item.cost)
                            .fontWeight(.heavy)
                    })
                    .foregroundColor(.white)
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}, label: {
                        Image(systemName: "suit.heart")
                            .font(.title2)
                            .foregroundColor(.white)
                    })
                } //: HSTACK
                .padding([.horizontal,.top])
                .padding(.bottom,-15)
                
                Image(item.image)
                    .offset(x: -30)
            } //: VSTACK
            .background(
                Color(item.image)
                    .cornerRadius(35)
                    .clipShape(ItemCurve())
                    .padding(.bottom,35)
            )
            
            Button(action: {}, label: {
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color(item.image))
                    .clipShape(Circle())
            })
            .offset(y: -18)
        }) //: ZSTACK
    }
}
