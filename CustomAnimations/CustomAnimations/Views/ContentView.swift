//
//  ContentView.swift
//  CustomAnimations
//
//  Created by Luan Nguyen on 08/12/2020.
//

import SwiftUI

struct ContentView: View {
    // MARK: - BODY
    var body: some View {
        ZStack {
            LottieView(filename: "LottieLogo2")
        }
        .frame(width: 360, height: 360, alignment: .center)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
