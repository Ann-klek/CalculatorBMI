//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
   
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func slider(_ sender: UISlider) {
        let height = "\( String(format:"%.2f", sender.value)) m"
        heightLabel.text = height
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = "\( String(format:"%.0f", sender.value)) kg"
        weightLabel.text = weight
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = Float(String(format:"%.2f", heightSlider.value))!
        let weight = Float(String(format:"%.0f", weightSlider.value))!
        calculatorBrain.calculate(weight: weight, height: height)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMI()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}


