//
//  main.swift
//  Swift Basics
//  Created by Jessica Murphey
//  Challenge: Swift Basics


import Foundation

//Variable declarations
let sample1: UInt8 = 0x3A
var sample2: UInt8 = 58
var heartRate = 85
var deposits: Double = 135002796
let acceleration: Float = 9.800
var mass: Float = 14.6
var distance = 129.763001
var lost = true
var expensive = true
var choice = 2
let integral: Character = "\u{222B}"
let greeting = "Hello"
var name = "Karen"


//Main
print((sample1 == sample2) ? "The samples are equal." : "The samples are not equal.")

print(heartRate >= 40 && heartRate <= 80 ? "Heart rate is normal." : "Heart rate is not normal.")

print( deposits >= 100000000 ? "You are exceedingly wealthy." : "Sorry you are so poor.")

var force = mass * acceleration
print("force = \(force)")

print("\(distance) is the distance.")

if lost == true && expensive == true {
    print("I am really sorry! I will get the manager.")
}else if lost == true && expensive == false {
    print("Here is a coupon for 10% off.")
}

switch choice{
case 1:
    print("You chose 1.")
case 2:
    print("You chose 2.")
case 3:
    print("You chose 3.")
default:
    print("You made an unknown choice.")
}

print("\(integral) is an integral.")

for i in 5...10{
    print("i = \(i)")
}

var age: Int = 0

while(age<6){
    print("age = \(age)")
    age+=1
}

print("\(greeting) \(name)")
