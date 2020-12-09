//
//  BlurView.swift
//  ComplexShapesAndCurves
//
//  Created by Luan Nguyen on 09/12/2020.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    // MARK: - MAKE UI VIEW
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemMaterialLight))
        return view
    }
    
    // MARK: - UPDATE UI VIEW
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        //: DO SOMETHING ABOUT UPDATE UI VIEW
    }
}
