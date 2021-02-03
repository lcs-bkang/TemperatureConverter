//
//  Functions.swift
//  TemperatureConverter
//
//  Created by Brad Kang on 2021-02-03.
//

import Foundation
// MARK: Temperatur Converter

// Celsius to Fahrenheit function
func convertCelsiusToFahrenheit(Celsius c: Double) -> Double {
    
    // Create a variable to hold the fahrenheit value
    var fahrenheit = 0.0
    
    // Code to convert celsius to fahrenheit
    fahrenheit = (c * 9/5) + 32
    
    // Return the value
    return fahrenheit
}

// Fahrenheit to Celsius function
func convertFahrenheitToCelsius(Fahrenheit f: Double) -> Double {
    
    // Create a variable to hold the celsius value
    var celsius = 0.0
    
    // Code to convert fahrenheit to celsius
    celsius = (f - 32) * 5/9
    
    // Return the value
    return celsius
}

// Celsius to Kelvin function
func convertCelsiusToKelvin(Celsius c: Double) -> Double {
    // Create a variable to hold the output
    var output = 0.0
    
    // Code to convert
    output = c + 273.15
    // Return
    return output
}

// Kelvin to Celsius function
func convertKelvinToCelsius(Kelvin k: Double) -> Double {
    // Variable for output
    var output = 0.0
    
    // Convert
    output = k - 273.15
    // Return
    return output
}
