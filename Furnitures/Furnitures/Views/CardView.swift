//
//  CardView.swift
//  Furnitures
//
//  Created by Luan Nguyen on 08/12/2020.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    var item: Item

    // MARK: - BODY
    var body: some View {
        HStack {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width / 3.2)

            VStack(alignment: .leading, spacing: 10) {
                Text(item.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                
                Text(item.subTitle)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Text(item.price)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
            } //: VSTACK

            Spacer(minLength: 0)
        } //: HSTACK
        .padding()
        .frame(width: UIScreen.main.bounds.width - 30)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
        .shadow(color: Color.black.opacity(0.08), radius: 5, x: -5, y: -5)
    }
}
