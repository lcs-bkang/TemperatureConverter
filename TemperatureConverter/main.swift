//
//  main.swift
//  TemperatureConverter
//
//  Created by Brad Kang on 2021-02-02.
//

import Foundation


// MARK: Input

// Create a title and purpose for the program.
print("This is a converter for Celsius to Fahrenheit and Fahrenheit to Celsius.")
print("========================================================================")
// Ask for the temperature scale they are converting from
print("What temperature scale are you converting from?")
print("C: Celsius")
print("F: Fahrenheit")
print("K: Kelvin")
print("Q: Quit the program")
// Get their input on which one they are converting from
let fromTempScaleLow = String.collectInput(withPrompt: "What temperature scale are you converting from (C / F / K / Q): ", acceptableValues: ["C", "F", "Q", "K", "c", "f", "q", "k"])
let fromTempScale = fromTempScaleLow.uppercased()
// Quit the program if they chose to
switch fromTempScale {
case "Q":
    print("The program has been quit.")
    exit(0)
default:
    break
}
// Ask for and get input for the temperature scale they are converting to
let toTempScaleLow = String.collectInput(withPrompt: "What temperature scale are you converting to? (C / F / K) ", acceptableValues: ["C", "c", "F", "f", "K", "k"])
let toTempScale = toTempScaleLow.uppercased()

// Variable for the full names of the temperature scales.
var scaleName = ""
// Variable for degrees (temperature scale) at the end of the program
var fromDegrees = ""
var toDegrees = ""
// If statement to get a string to input to the string below.
switch fromTempScale {
case "C":
    scaleName = "Celsius"
    fromDegrees = "°C"
case "F":
    scaleName = "Fahrenheit"
    fromDegrees = "°F"
case "K":
    scaleName = "Kelvin"
    fromDegrees = "°K"
default:
    break
}
// Switch the toDegrees depending on the converted temperature scale
switch toTempScale {
case "C":
    toDegrees = "°C"
case "F":
    toDegrees = "°F"
case "K":
    toDegrees = "°K"
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
print("The temperature \(numberToConvert)\(fromDegrees) is converted into \(output)\(toDegrees).")



