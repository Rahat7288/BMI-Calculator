//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heghtLabel: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    let initialHeight = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func HeightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heghtLabel.text = "\(height)m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLable.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePresed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight /  (height * height)
        print(bmi)
        
//        displaying or navigation to next screen
        let secondVC = SecondViewController()
        secondVC.bmiValue =  String(format: "%.1f", bmi)
        
        self.present(secondVC, animated: true, completion: nil)
    }
}

