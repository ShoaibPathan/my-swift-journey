//
//  BottomSheet.swift
//  AppleMapBottomSheet
//
//  Created by Luan Nguyen on 10/12/2020.
//

import SwiftUI

struct BottomSheet: View {
    // MARK: - PROPERTIES
    @State var txt = ""
    @Binding var offset: CGFloat
    var value: CGFloat
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Capsule()
                .fill(Color.gray.opacity(0.5))
                .frame(width: 50, height: 5)
                .padding(.top)
                .padding(.bottom,5)

            HStack(spacing: 15) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 22))
                    .foregroundColor(.gray)

                TextField("Search Place", text: $txt) { (status) in
                    withAnimation {
                        offset = value
                    }
                } onCommit: { }
            } //: HSTACK
            .padding(.vertical,10)
            .padding(.horizontal)
            // BlurView
            // FOr Dark Mode Adoption
            .background(BlurView(style: .systemMaterial))
            .cornerRadius(15)
            .padding()
            
            ScrollView(.vertical, showsIndicators: false, content: {
                LazyVStack(alignment: .leading, spacing: 15, content: {
                    ForEach(1...15, id: \.self) { count in
                        Text("Searched Place")
                        Divider()
                            .padding(.top,10)
                    }
                }) //: LAZYVSTACK
                .padding()
                .padding(.top)
            }) //: SCROLLVIEW
        } //: VSTACK
        .background(BlurView(style: .systemMaterial))
        .cornerRadius(15)
    }
}
