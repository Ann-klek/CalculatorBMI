//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Aннa Клековкинa on 21.08.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    mutating func calculate(weight: Float, height:Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more piece", color: UIColor.systemBlue)
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor.systemGreen)
        } else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
    }
    func getBMI()->String{
        return  String(format:"%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "Eat more"
    }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
}
