//
//  Functions.swift
//  TemperatureConverter
//
//  Created by Brad Kang on 2021-02-03.
//

import Foundation
// MARK: Temperature Converter

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


// MARK: Time Converter

// Switch Function for from measurements.
func fromMeasurementNames(from f: Int) -> String {
    // Variable for from measurement name
    var fromName = ""
    
    // Changing from measurement name
    switch fromMeasurement {
    case 1:
        fromName = "Century"
    case 2:
        fromName = "Decade"
    case 3:
        fromName = "Year"
    case 4:
        fromName = "Month"
    case 5:
        fromName = "Days"
    case 6:
        fromName = "Hours"
    case 7:
        fromName = "Minutes"
    case 8:
        fromName = "Seconds"
    case 9:
        fromName = "Milliseconds"
    case 10:
        fromName = "Microseconds"
    case 11:
        fromName = "Nanoseconds"
    default:
        break
    }
    return fromName
}
// Switch function for to measurements.
func toMeasurementNames(to t: Int) -> String {
    // Variable to hold the name
    var toName = ""
    switch toMeasurement {
    case 1:
        toName = "Century"
    case 2:
        toName = "Decade"
    case 3:
        toName = "Year"
    case 4:
        toName = "Month"
    case 5:
        toName = "Days"
    case 6:
        toName = "Hours"
    case 7:
        toName = "Minutes"
    case 8:
        toName = "Seconds"
    case 9:
        toName = "Milliseconds"
    case 10:
        toName = "Microseconds"
    case 11:
        toName = "Nanoseconds"
    default:
        break
    }
    return toName
}
// Years to hours function
func yearsToHours(Years y: Double) -> Double {
    // Variable for output
    var output = 0.0
    // Code to convert
    output = y * 8765.81
    // Return
    return output
}
