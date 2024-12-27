//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by MacBook Pro on 12/27/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    
    var bmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let lable = UILabel()
        
        lable.text = bmiValue
        lable.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        view.addSubview(lable)
    }
}
