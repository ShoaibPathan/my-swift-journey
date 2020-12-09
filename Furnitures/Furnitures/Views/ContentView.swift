//
//  ContentView.swift
//  Furnitures
//
//  Created by Luan Nguyen on 08/12/2020.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    init() {
        UITabBar.appearance().isHidden = true //: HIDING TAB BAR
    }

    // MARK: - BODY
    var body: some View {
        TabBarView()
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
