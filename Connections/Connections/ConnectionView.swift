//
//  ConnectionView.swift
//  Connections
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct ConnectionView: View {
    // MARK: - PROPERTIES
    let imageName: String
    
    // MARK: - BODY
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 80, height: 80)
            .clipShape(Circle())
    }
}
