//
//  SongInfo.swift
//  Classica
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct SongInfo: View {
    // MARK: - PROPERTIES
    let title: String
    let composer: String
    
    // MARK: - BODY
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.headline)
                    .foregroundColor(Color(.white))
                Spacer()
            } //: HSTACK
            
            HStack {
                Text(composer)
                    .font(.caption)
                    .foregroundColor(Color(.white))
                Spacer()
            } //: HSTACK
        }
        .shadow(radius: 1)
        .padding(.all, 20)
    }
}
