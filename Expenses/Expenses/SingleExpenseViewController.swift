//
//  SingleExpenseViewController.swift
//  Expenses
//
//  Created by Tech Innovator on 11/30/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class SingleExpenseViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        amountTextField.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveExpense(_ sender: Any) {
        let name = nameTextField.text
        //use ?? to give default value since it is a non optional variable
        let amountText = amountTextField.text ?? ""
        let amount = Double(amountText) ?? 0.0
        let date = datePicker.date
        
        if let expense = Expense(name: name, amount: amount, date: date){
            do{
                let managedContext = expense.managedObjectContext
                
                //the 'try' marks the line of code that can throw an exception
                try managedContext?.save()
                
                self.navigationController?.popViewController(animated: true)
                
            }catch{
                print("Context could not be saved")
            }
        }
    }
}

extension SingleExpenseViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
