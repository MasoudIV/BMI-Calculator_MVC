//
//  BMI.swift
//  BMI Calculator
//
//  Created by Masoud Farmani on 10.07.1402 AP.
//  Copyright © 1402 AP Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    private let value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float) {
        self.value = value
        
        switch self.value {
        case ..<18.5:
            advice = "Eat more pies!"
            color = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        case 18.5...24.9 :
            advice = "Fit as a fiddle!"
            color = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        case 24.9...:
            advice = "Eat fewer pies!"
            color = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
            
        default:
            advice = "Eat more pies!"
            color = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        }
    }
    
    func getValue() -> Float {
        return value.round(to: 1)
    }
}
