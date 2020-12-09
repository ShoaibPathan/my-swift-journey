//
//  CustomCorner.swift
//  ComplexShapesAndCurves
//
//  Created by Luan Nguyen on 09/12/2020.
//

import SwiftUI

struct CustomCorner: Shape {
    // MARK: PROPERTIES
    var corners: UIRectCorner
    
    // MARK: - DRAW PATH
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }
}
