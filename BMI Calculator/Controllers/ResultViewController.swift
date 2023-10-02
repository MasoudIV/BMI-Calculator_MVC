//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Masoud Farmani on 10.07.1402 AP.
//  Copyright © 1402 AP Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let bmi {
            resultLabel.text = String(bmi.getValue())
            adviceLabel.text = bmi.advice
            backgroundImageView.backgroundColor = bmi.color
        }
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
