//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Aннa Клековкинa on 21.08.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultBackground: UIImageView!
    @IBOutlet weak var bmiLabel: UILabel!
     
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        view.backgroundColor = color
        adviceLabel.text = advice
        
        
        
    }
    
    @IBAction func recalculatedPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
