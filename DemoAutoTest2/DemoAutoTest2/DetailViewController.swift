//
//  DetailViewController.swift
//  DemoAutoTest2
//
//  Created by Hong Chinh on 2/3/20.
//  Copyright © 2020 Hong Chinh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblLabel: UILabel!
    
    var lblReceive: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if lblReceive != nil {
            lblLabel.text = lblReceive
        }

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
