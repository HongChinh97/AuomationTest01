//
//  ViewController.swift
//  TestTableAuto
//
//  Created by Hong Chinh on 2/4/20.
//  Copyright © 2020 Hong Chinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        if(name != nil){
            label.text = name
        }
        
    }


}

