//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Justin DeMartinis on 6/20/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {

    var bmi: BMI?
    
    
    func getBMIValue() -> String {
        
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1Decimal
    
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more food", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        }
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "You are super fit!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less food", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
