//
//  ContentView.swift
//  Classica
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: ClassicaModel
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                   HStack(spacing: 30) {
                        SongCard(title: "Waltz of the Flowers", composer: "Tchaikovsky", image: "childhood", type: "mp3")
                        SongCard(title: "1812 Overture", composer: "Tchaikovsky", image: "youth", type: "mp3")
                        SongCard(title: "Ride of the Valkyries", composer: "Wagner", image: "manhood", type: "mp3")
                        SongCard(title: "9th Symphony (Finale)", composer: "Beethoven", image: "oldage", type: "mp3")
                    } //: HSTACK
                    .padding(.all, 30)
                }
                
                HStack {
                    Button(action: { model.playMusic() }) {
                        Image(systemName: "play.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray3))
                    }

                    Button(action: { model.pauseMusic() }) {
                        Image(systemName: "pause.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray3))
                    }

                    Button(action: { model.stopMusic() }) {
                        Image(systemName: "stop.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemGray3))
                    }
                } //: HSTACK
            } //: VSTACK
            .navigationTitle(Text("Classica"))
        }
    }
}
