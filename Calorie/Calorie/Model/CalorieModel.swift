//
//  CalorieModel.swift
//  Calorie
//
//  Created by Luan Nguyen on 06/12/2020.
//

import Foundation

class CalorieModel: ObservableObject {
    // MARK: - PROPERTIES
    @Published var age: Double = 26
    @Published var height: Double = 165
    @Published var weight: Double = 63
    @Published var gender: Gender = Gender.female
    @Published var resultBMR: Double = 0
    
    // MARK: - BMR
    func calculateBMR() {
        switch gender {
        case .male:
            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) + 5
        case .female:
            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) - 161
        }
    }
}
