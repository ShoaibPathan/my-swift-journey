//
//  ContentView.swift
//  BottomSheet
//
//  Created by Luan Nguyen on 10/12/2020.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var bottomSheetShown = false

    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            Color.green
            BottomSheetView(
                isOpen: self.$bottomSheetShown,
                maxHeight: geometry.size.height * 0.7
            ) {
                Color.blue
            }
        }.edgesIgnoringSafeArea(.all)
    }
}


// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
