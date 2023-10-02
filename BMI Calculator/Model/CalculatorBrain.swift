//
//  BioInfo.swift
//  BMI Calculator
//
//  Created by Masoud Farmani on 10.07.1402 AP.
//  Copyright © 1402 AP Angela Yu. All rights reserved.
//

import Foundation
struct CalculatorBrain {
    
    var bmi: BMI?

    //I don't need to store `userHeight` and `userWeight` at the moment.
    //if i changed my mind, i can simply create a property for each one
    //and capture values inside this method.
    mutating func calculateBMI(_ userHeight: Float, _ userWeight: Float) {
        let bmiValue = userWeight / pow(userHeight, 2)
        bmi = BMI(value: bmiValue)
    }
    
    func getBMI() -> BMI? {
        return bmi
    }
}
