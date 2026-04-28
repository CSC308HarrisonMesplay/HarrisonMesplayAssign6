//
//  ViewController.swift
//  M10Bar
//
//  Created by Mesplay, Harrison W. on 4/21/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var genderSwitch: UISegmentedControl!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        guard let heightText = heightTextField.text,
                let weightText = weightTextField.text,
                let height = Double(heightText),
                let weight = Double(weightText) else{
            bmiLabel.text = "Invalid Input"
            return
        }
        let bmi = weight / (height * height * 0.0001)
        let roundedBmi = String(format: "%.1f", bmi)
        let results = getBMICategory(bmi: bmi)
        bmiLabel.text = "BMI: \(roundedBmi), Results: \(results)"
    }
    func getBMICategory(bmi: Double) -> String {
        switch bmi {
        case ..<18.5:
            bmiLabel.backgroundColor = .systemCyan
            return "Underweight"
        case 18.5..<25:
            bmiLabel.backgroundColor = .systemGreen
            return "Normal weight"
        case 25..<30:
            bmiLabel.backgroundColor = .systemYellow
            return "Overweight"
        default :
            bmiLabel.backgroundColor = .systemRed
            return "Obese"
        }
    }
}

