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

// MARK: Input

// MARK: Process

// MARK: Output
