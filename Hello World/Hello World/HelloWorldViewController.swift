//
//  HelloWorldViewController.swift
//  Hello World
//
//  Created by Jessica Murphey on 6/26/20.
//  Copyright © 2020 Jessica Murphey. All rights reserved.
//

import UIKit

class HelloWorldViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doHello(_ sender: UIButton) {
        displayLabel.text = "Hello World!"
    }
    
    @IBAction func doClear(_ sender: UIButton) {
        displayLabel.text = ""
    }

}
