//
//  ColorsViewController.swift
//  Colors
//
//  Created by Jessica Murphey on 7/3/20.
//  Copyright © 2020 Jessica Murphey. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var color_vars = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
     //A function that is called by the table view when it wants to know how many sections the table view has
     //Section is a collection of cells (columns?)
     func numberOfSections(in tableView: UITableView) -> Int {
         return 1 //Only have one section in this table view
     }
     
     //Returns number of rows in each section that its passed
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return color_vars.count
     }
     
     //Gets Called for every row and every section, needs to return UITableViewCell
     //Is passed indexPath which has row and section properties
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "color_cell", for: indexPath) //identifier is chosen in storyboard
         
         //Because its possible that textLabel could be nil it has to be assigned optional chaining
         cell.textLabel?.text = color_vars[indexPath.row]
         
         return cell
     }

}
