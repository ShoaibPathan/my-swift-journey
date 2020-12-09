//
//  ContentView.swift
//  LoginUI
//
//  Created by Luan Nguyen on 09/12/2020.
//

import SwiftUI

struct ContentView: View {
    // MARK:- BODY
    var body: some View {
        ZStack {
            LinearGradient(gradient: .init(colors: [Color("Color"),Color("Color1"),Color("Color2")]), startPoint: .top, endPoint: .bottom) //: LINEAR GRADIENT
                .edgesIgnoringSafeArea(.all)
            
            if UIScreen.main.bounds.height > 800 {
                Home()
            }
            else {
                ScrollView(.vertical, showsIndicators: false) {
                    Home()
                } //: SCROLLVIEW
            }
        } //: ZSTACK
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
