//
//  BlurView.swift
//  AppleMapBottomSheet
//
//  Created by Luan Nguyen on 10/12/2020.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    // MARK: - PROPERTIES
    var style: UIBlurEffect.Style
    
    // MARK: - MAKE UI VIEW
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    
    // MARK: - UPDATE UI VIEW
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
    }
}
