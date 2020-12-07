//
//  TabBarView.swift
//  CustomTabView
//
//  Created by Luan Nguyen on 07/12/2020.
//

import SwiftUI

struct TabBarView: View {
    // MARK: - PROPERTIES
    @Binding var selection: Int
    @Namespace private var currentTab
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .bottom) {
            ForEach (tabs.indices) { index in
                GeometryReader { geometry in
                    VStack(spacing: 4) {
                        if selection == index {
                            Color(.label)
                                .frame(height: 2)
                                .offset(y: -8)
                                .matchedGeometryEffect(id: "currentTab", in: currentTab)
                        }
                        
                        if tabs[selection].label == "Notifications" && tabs[index].label == "Notifications" {
                            Image(systemName: tabs[index].image)
                                .frame(height: 20)
                                .rotationEffect(.degrees(25))
                        } else {
                            Image(systemName: tabs[index].image)
                                .frame(height: 20)
                                .rotationEffect(.degrees(0))
                        }
                        
                        Text(tabs[index].label)
                            .font(.caption2)
                            .fixedSize()
                    } //: VSTACK
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: geometry.size.width / 2, height: 44, alignment: .bottom)
                    .padding(.horizontal)
                    .foregroundColor(selection == index ? Color(.label) : .secondary)
                    .onTapGesture {
                        withAnimation {
                            selection = index
                        }
                    }
                } //: GEOMETRYREADER
                .frame(height: 44, alignment: .bottom)
            }
        } //: HSTACK
    }
}

// MARK: - PREVIEW
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selection: Binding.constant(0))
            .previewLayout(.sizeThatFits)
    }
}
