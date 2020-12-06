//
//  SongCard.swift
//  Classica
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct SongCard: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var model: ClassicaModel
    
    let title: String
    let composer: String
    let image: String
    let type: String
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            self.model.loadAndPlay(song: title, fileType: type)
        }) {
            ZStack {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                VStack {
                    HStack {
                        SongInfo(title: title, composer: composer)
                        Spacer()
                    }
                    Spacer()
                } //: VSTACK
            } //: ZSTACK
            .frame(width: 300, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .buttonStyle(ScaleButtonStyle())
    }
}
