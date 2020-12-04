//
//  CustomView.swift
//  HelloUniverse
//
//  Created by Luan Nguyen on 04/12/2020.
//

import SwiftUI

struct CustomView: View {
    var body: some View {
        ZStack {
            Image("Glaxy")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            Text("Hello, Universe!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(0xFFFFFF))
                .shadow(radius: 4)
        }
    }
}
