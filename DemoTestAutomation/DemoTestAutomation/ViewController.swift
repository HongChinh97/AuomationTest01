//
//  ViewController.swift
//  DemoTestAutomation
//
//  Created by Hong Chinh on 2/3/20.
//  Copyright © 2020 Hong Chinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFeild1: UITextField!
    @IBOutlet weak var textFeild2: UITextField!
    @IBOutlet weak var sumLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        sumLabel.accessibilityIdentifier = "resultLbl"
    }


    @IBAction func actionResulatButton(_ sender: Any) {
         let number1 = Double(textFeild1.text!)
        let number2 = Double(textFeild2.text!)
        let sum = Double(number1! + number2!)

        if number1 != nil && number2 != nil {
            
            sumLabel.text = "\(sum)"
        }
        
    }
}

