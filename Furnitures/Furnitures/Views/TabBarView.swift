//
//  TabBarView.swift
//  Furnitures
//
//  Created by Luan Nguyen on 08/12/2020.
//

import SwiftUI

struct TabBarView: View {
    // MARK: - PROPERTIES
    @State var current = "Home"

    // MARK: - BODY
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $current) {
                Home()
                    .tag("Home")
                
                Text("Messages")
                    .tag("Messages")
                
                Text("Account")
                    .tag("Account")
            } //: TABVIEW
 
            HStack(spacing: 0) {
                
                //: TAB BUTTON
                TabButton(title: "Home", image: "home", selected: $current)
                
                Spacer(minLength: 0)
                
                //: TAB BUTTON
                TabButton(title: "Messages", image: "messenger", selected: $current)
                
                Spacer(minLength: 0)
                
                //: TAB BUTTON
                TabButton(title: "Account", image: "user", selected: $current)
            }
            .padding(.vertical,12)
            .padding(.horizontal)
            .background(Color("tab"))
            .clipShape(Capsule())
            .padding(.horizontal,25)
        }
    }
}
