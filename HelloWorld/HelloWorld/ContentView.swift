//
//  ContentView.swift
//  HelloWorld
//
//  Created by Luan Nguyen on 03/12/2020.
//

import SwiftUI

struct HelloWorldView:View {
    var body: some View {
        Text("Hello World! I am SwiftUI!")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .font(.title)
            .padding()
            .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color(0xFF4D6A))
            .foregroundColor(Color(0x111111))
            .border(Color(0xFFFFFF), width: 4)
    }
}

struct AnotherView:View {
    var body: some View {
        Text("This is an other View.")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .foregroundColor(Color(0x00FF92))
    }
}
