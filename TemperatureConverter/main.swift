//
//  main.swift
//  TemperatureConverter
//
//  Created by Brad Kang on 2021-02-02.
//

import Foundation

// MARK: Functions

// Celsius to Fahrenheit function
func CtoF(Celsius c: Double) -> Double {
    
    // Create a variable to hold the fahrenheit value
    var fahrenheit = 0.0
    
    // Code to convert celsius to fahrenheit
    fahrenheit = (c * 9/5) + 32
    
    // Return the value
    return fahrenheit
}

// Fahrenheit to Celsius function
func FtoC(Fahrenheit f: Double) -> Double {
    
    // Create a variable to hold the celsius value
    var celsius = 0.0
    
    // Code to convert fahrenheit to celsius
    celsius = (f - 32) * 5/9
    
    // Return the value
    return celsius
}

// Create a variable to allow the program to be repeated.
var quit = ""

// MARK: Input

// Create a title and purpose for the program.
print("This is a converter for Celsius to Fahrenheit and Fahrenheit to Celsius.")
print("========================================================================")
// Ask for the temperature scale they are converting from
print("What temperature scale are you converting from?")
print("C: Celsius")
print("F: Fahrenheit")
print("Q: Quit the program")
// Get their input on which one they are converting from
let fromTempScaleLow = String.collectInput(withPrompt: "What temperature scale are you converting from (C / F / Q): ", acceptableValues: ["C", "F", "Q", "c", "f", "q"])
let fromTempScale = fromTempScaleLow.uppercased()
// If statement to quit the program if that option is chosen.
if fromTempScale != "Q" {
// Variable for the full names of the temperature scales.
var scaleName = ""
// If statement to get a string to input to the string below.
switch fromTempScale {
case "C":
    scaleName = "Celsius"
case "F":
    scaleName = "Fahrenheit"
default:
    break
}
// Ask and get the number they are converting.
let numberToConvert = Double.collectInputDouble(withPrompt: "What number on the \(scaleName) temperature scale are you converting? \n", minimum: nil, maximum: nil)

// MARK: Process

// Create a variable for the output
var output = 0.0
// Change the function that is called depending on the temperature scale entered.
switch fromTempScale {
case "C":
    output = CtoF(Celsius: numberToConvert)
case "F":
    output = FtoC(Fahrenheit: numberToConvert)
default:
    break
}
// MARK: Output
print("The converted temperature is \(output)")
} else {
    print("The program has been quit.")
}

