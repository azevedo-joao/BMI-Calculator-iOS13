//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by João Azevedo on 14.12.22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    let colors = ["yellow": UIColor.magenta.withAlphaComponent(0.5),
                  "blue": UIColor.green.withAlphaComponent(0.5),
                  "lila": UIColor.red.withAlphaComponent(0.5)]
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (pow(height, 2))
        
        let advice: String?
        let color: UIColor?
        
        if bmiValue < 18.5 {
            advice = "Skinny Legend. Go get some pizzas!"
            color = colors["yellow"]
        } else if bmiValue >= 18.5 && bmiValue <= 24.9 {
            advice = "Weeerk!"
            color = colors["blue"]
        } else {
            advice = "Gurl, start a diet ASAP!"
            color = colors["lila"]
        }
        
        bmi = BMI(value: bmiValue, advice: advice!, color: color!)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "Standardsatz"
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
