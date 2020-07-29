//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by Jessica Murphey on 7/29/20.
//  Copyright © 2020 Jessica Murphey. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    //Optional b/c at the beginning before we get to the window it isn't set
    var color: Color?

    @IBOutlet weak var ColorNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ColorNameLabel.text = color?.name
        
        self.view.backgroundColor = color?.uiColor
        
        self.title = color?.name
        
        // Do any additional setup after loading the view.
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
