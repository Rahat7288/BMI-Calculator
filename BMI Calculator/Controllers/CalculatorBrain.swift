//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by MacBook Pro on 12/27/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Just maintain your self", color: UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, advice: "No Hope keep Going", color: UIColor.red)
        }
        
    }
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        
        return bmiTo1DecimalPlace
    
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "Something went Wrong"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.blue
    }
    
    
}
