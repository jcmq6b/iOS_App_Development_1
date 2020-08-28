//
//  ConversionCalculatorViewController.swift
//  ConversionCalculator
//
//  Created by Jessica Murphey on 7/31/20.
//  Copyright © 2020 Jessica Murphey. All rights reserved.
//

import UIKit

class ConversionCalculatorViewController: UIViewController {
    
    //Determines the conversion units
    //mode = 1 is fahrenheit to celcius
    //mode = 2 is celius to fahrenheit
    //mode = 3 is miles to kilometers
    //mode = 4 is kilometers to miles
    //Default is mode 1 for onload
    var mode = 1;
    
    //I Decided to have the units just presented in labels next to the text fields
    //this cuts out a ton of work trying to manage the changing number with the unit attached
    @IBOutlet weak var unitLabelTop: UILabel!
    @IBOutlet weak var unitLabelBottom: UILabel!
    
    
    var bottomFieldNumber: Double = 0;
    var topFieldNumber: Double = 0;
    //Prevents multiple decimals in the number
    //Resets to false again when clear button is pressed
    var containsDecimal: Bool = false;
    
    
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var bottomTextField: UITextField!
    
    
    //Gave the numbers tags of their value+1
    @IBAction func numbers(_ sender: UIButton) {
        bottomTextField.text = bottomTextField.text! + String(sender.tag-1)
        
        //Ok to force unwrap since only numbers available
        bottomFieldNumber = Double(bottomTextField.text!)!
        
        //converts the bottom number
        topFieldNumber = conversion.convertNumber(mode: mode, bottom: bottomFieldNumber)
        
        topTextField.text = String(topFieldNumber)
    }
    
    
    @IBAction func decimalButton(_ sender: UIButton) {
        //Checks to make sure there isn't a decimal already in the string
        if(containsDecimal == false && bottomTextField.text != ""){
            bottomTextField.text = bottomTextField.text! + "."
                
            bottomFieldNumber = Double(bottomTextField.text!)!
            
            //converts the bottom number
            topFieldNumber = conversion.convertNumber(mode: mode, bottom: bottomFieldNumber)
            
            topTextField.text = String(topFieldNumber)
            
            containsDecimal = true
        }
    }
    
    @IBAction func plusMinusButton(_ sender: UIButton) {
        bottomFieldNumber = bottomFieldNumber * (-1)
        bottomTextField.text = String(bottomFieldNumber)
        //recalculates
        topFieldNumber = conversion.convertNumber(mode: mode, bottom: bottomFieldNumber)
        topTextField.text = String(topFieldNumber)
    }
    
    //Clears the text area
    @IBAction func clearButton(_ sender: UIButton) {
        bottomTextField.text = ""
        topTextField.text = ""
        
        bottomFieldNumber = 0
        topFieldNumber = 0
        
        containsDecimal = false
        
    }
    
    //Alert box for conversion selection
    //Will set the mode and change the unit labels
    @IBAction func converterButton(_ sender: UIButton) {
        let alert = UIAlertController(title: nil, message: "Choose Converter", preferredStyle: UIAlertController.Style.actionSheet)
        
        alert.addAction(UIAlertAction(title: "Fahrenheit to Celcius", style: UIAlertAction.Style.default, handler: { (alertAction) -> Void in
            self.mode = 1
            self.unitLabelBottom.text = "°F"
            self.unitLabelTop.text = "°C"
            //recalculates
            if(self.bottomFieldNumber != 0){
                self.topFieldNumber = conversion.convertNumber(mode: self.mode, bottom: self.bottomFieldNumber)
                self.topTextField.text = String(self.topFieldNumber)
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Celcius to Fahrenheit", style: UIAlertAction.Style.default, handler: { (alertAction) -> Void in
            self.mode = 2
            self.unitLabelBottom.text = "°C"
            self.unitLabelTop.text = "°F"
            //recalculates
            if(self.bottomFieldNumber != 0){
                self.topFieldNumber = conversion.convertNumber(mode: self.mode, bottom: self.bottomFieldNumber)
                self.topTextField.text = String(self.topFieldNumber)
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Miles to Kilometers", style: UIAlertAction.Style.default, handler: { (alertAction) -> Void in
            self.mode = 3
            self.unitLabelBottom.text = "mi"
            self.unitLabelTop.text = "km"
            //recalculates
            if(self.bottomFieldNumber != 0){
                self.topFieldNumber = conversion.convertNumber(mode: self.mode, bottom: self.bottomFieldNumber)
                self.topTextField.text = String(self.topFieldNumber)
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Kilometers to Miles", style: UIAlertAction.Style.default, handler: { (alertAction) -> Void in
            self.mode = 4
            self.unitLabelBottom.text = "km"
            self.unitLabelTop.text = "mi"
            //recalculates
            if(self.bottomFieldNumber != 0){
                self.topFieldNumber = conversion.convertNumber(mode: self.mode, bottom: self.bottomFieldNumber)
                self.topTextField.text = String(self.topFieldNumber)
            }
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    //Sets labels for default mode value
    override func viewDidLoad() {
        super.viewDidLoad()
        unitLabelBottom.text = "°F"
        unitLabelTop.text = "°C"
            
    }
}
    

