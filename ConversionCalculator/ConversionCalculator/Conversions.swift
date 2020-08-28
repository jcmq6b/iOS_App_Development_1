//
//  Conversions.swift
//  ConversionCalculator
//
//  Created by Jessica Murphey on 7/31/20.
//  Copyright © 2020 Jessica Murphey. All rights reserved.
//

import Foundation

//handles the conversion of the inputted number
class conversion{
    
    static func fahrenheitToCelcius(fahrenheit input: Double) -> Double{
        let celcius: Double = (input - 32) * (5/9)
        return celcius
    }
    
    static func celciusToFahrenheit(celcius input: Double) ->Double{
        let fahrenheit: Double = (input * (9/5) + 32)
        return fahrenheit
    }
    
    static func milesToKilometers(miles input: Double) -> Double{
        let kilometers: Double = input * (1.609)
        return kilometers
    }
    
    static func kilometersToMiles(kilometers input: Double) -> Double{
        let miles: Double = input/1.609
        return miles
    }
    
    //mode = 1 is fahrenheit to celcius
    //mode = 2 is celius to fahrenheit
    //mode = 3 is miles to kilometers
    //mode = 4 is kilometers to miles
    //Default is mode 1 for onload
    static func convertNumber(mode input: Int, bottom inputNumber: Double) -> Double{
        var topFieldNumber: Double = 0
        
        switch input {
        case 1:
            topFieldNumber = conversion.fahrenheitToCelcius(fahrenheit: inputNumber)
            
        case 2:
            topFieldNumber = conversion.celciusToFahrenheit(celcius: inputNumber)
            
        case 3:
            topFieldNumber = conversion.milesToKilometers(miles: inputNumber)
            
        case 4:
            topFieldNumber = conversion.kilometersToMiles(kilometers: inputNumber)
            
        default: //only used if some error occurs
            print("An error has occured with the conversion")
        }
        return topFieldNumber
    }
}
