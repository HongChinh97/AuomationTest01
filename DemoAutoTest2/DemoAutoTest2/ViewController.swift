//
//  ViewController.swift
//  DemoAutoTest2
//
//  Created by Hong Chinh on 2/3/20.
//  Copyright © 2020 Hong Chinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    var sum: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func DoneButton(_ sender: UIButton) {
        let num1 = Int(tf1.text!)
        let num2 = Int(tf2.text!)
        sum = Int(num1! + num2!)
//        let detailVC = DetailViewController()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailVC.lblReceive = "\(sum ?? 0)"
        
        navigationController?.pushViewController(detailVC, animated: true)
    }
    

}

