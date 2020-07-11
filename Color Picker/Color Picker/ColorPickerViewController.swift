//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Jessica Murphey on 7/10/20.
//  Copyright © 2020 Jessica Murphey. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {
    
    struct ColorStruct {
        var color: String
        var screenColor: UIColor
    }

    var colorArray: [ColorStruct] = [ColorStruct(color: "Red", screenColor: UIColor.red), ColorStruct(color: "Orange", screenColor: UIColor.orange), ColorStruct(color: "Yellow", screenColor: UIColor.yellow), ColorStruct(color: "Green", screenColor: UIColor.green), ColorStruct(color: "Blue", screenColor: UIColor.blue), ColorStruct(color: "Purple", screenColor: UIColor.purple)]
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        view.backgroundColor = colorArray[0].screenColor
        colorLabel.text = colorArray[0].color
    }
    
}

extension ColorPickerViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colorArray[row].color
        view.backgroundColor = colorArray[row].screenColor
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorArray[row].color
    }
}
