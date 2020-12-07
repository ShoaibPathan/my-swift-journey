//
//  ContentView.swift
//  CustomTabView
//
//  Created by Luan Nguyen on 07/12/2020.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var selection = 0
    
    // MARK: - BODY
    var body: some View {
        TabView(selection: $selection) {
            Text("Home")
                .tag(0)
            Text("My Network")
                .tag(1)
            Text("Post")
                .tag(2)
            Text("Notifications")
                .tag(3)
            Text("Jobs")
                .tag(4)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        
        Divider()
        
        // MARK: - TAB BAR VIEW
        TabBarView(selection: $selection)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
