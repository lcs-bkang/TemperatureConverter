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

// FROM X TO HOUR


// Century to hours function
func centuryToHours(Centuries c: Double) -> Double {
    // Variable for hour equivalent
    var hourEquivalent = 0.0
    // Convert
    hourEquivalent = c * 876000
    // Return
    return hourEquivalent
}

// Decade to hours function
func decadeToHours(Decade d: Double) -> Double {
    // Variable for hour equivalent
    var hourEquivalent = 0.0
    // Convert
    hourEquivalent = d * 87600
    // Return
    return hourEquivalent
}

// Years to hours function
func yearsToHours(Years y: Double) -> Double {
    // Variable for output
    var hourEquivalent = 0.0
    // Code to convert
    hourEquivalent = y * 8760
    // Return
    return hourEquivalent
}

// Months to hours function
func monthsToHours(Months m: Double) -> Double {
    // Variable for hour equivalent
    var hourEquivalent = 0.0
    // Convert
    hourEquivalent = m * 730
    // Return
    return hourEquivalent
}

// Days to hours function
func daysToHours(Days d: Double) -> Double {
    // Hour Equivalent
    var hourEquivalent = 0.0
    // Convert
    hourEquivalent = d * 24
    // Return
    return hourEquivalent
}

// Minutes to hours function
func minutesToHours(Minutes m: Double) -> Double {
    // Hour Equivalent
    var hourEquivalent = 0.0
    // Convert
    hourEquivalent = m / 60
    // Return
    return hourEquivalent
}

// Seconds to hours function
func secondsToHours(Seconds s: Double) -> Double {
    // Variable hour equivalent
    var hourEquivalent = 0.0
    // Convert
    hourEquivalent = s / 3600
    // Return
    return hourEquivalent
}

// Milliseconds to hours function
func millisecondsToHours(Milliseconds m: Double) -> Double {
    // Variable hour equivalent
    var hourEquivalent = 0.0
    // Convert
    hourEquivalent = m / 3600000
    // Return
    return hourEquivalent
}

// Microseconds to hours function
func microsecondsToHours(Microseconds m: Double) -> Double {
    // Hour equivalent
    var hourEquivalent = 0.0
    // Convert
    hourEquivalent = m / 3600000000
    // Return
    return hourEquivalent
}

// Nanoseconds to hours function
func nanosecondsToHours(Nanoseconds n: Double) -> Double {
    // Hour equivalent
    var hourEquivalent = 0.0
    // Convert
    hourEquivalent = n * 3600000000000
    // Return
    return hourEquivalent
}

// Switch function for which conversion function to call
func fromXToHours(Number n: Double, from f: Int) -> Double {
    // Variable to hold the hour equivalent
    var hourEquivalent = 0.0
    
    switch fromMeasurement {
    case 1:
        hourEquivalent = centuryToHours(Centuries: n)
    case 2:
        hourEquivalent = decadeToHours(Decade: n)
    case 3:
        hourEquivalent = yearsToHours(Years: n)
    case 4:
        hourEquivalent = monthsToHours(Months: n)
    case 5:
        hourEquivalent = daysToHours(Days: n)
    case 6:
        hourEquivalent = n
    case 7:
        hourEquivalent = minutesToHours(Minutes: n)
    case 8:
        hourEquivalent = secondsToHours(Seconds: n)
    case 9:
        hourEquivalent = millisecondsToHours(Milliseconds: n)
    case 10:
        hourEquivalent = microsecondsToHours(Microseconds: n)
    case 11:
        hourEquivalent = nanosecondsToHours(Nanoseconds: n)
    default:
        break
    }
    return hourEquivalent
}


// FROM HOUR TO X


// Hour to century
func hourToCentury(Hours h: Double) -> Double {
    // Output
    var output = 0.0
    // Convert
    output = h / 876000
    // Return
    return output
}

// Hour to decade
func hourToDecade(Hours h: Double) -> Double {
    // Output
    var output = 0.0
    // Convert
    output = h / 87600
    // Return
    return output
}

// Hour to year
func hourToYear(Hours h: Double) -> Double {
    // Output
    var output = 0.0
    // Convert
    output = h / 8760
    // Return
    return output
}

// Hour to month
func hourToMonth(Hours h: Double) -> Double {
    // Output
    var output = 0.0
    // Convert
    output = h / 730
    // Return
    return output
}

// Hour to day
func hourToDay(Hours h: Double) -> Double {
    // Output
    var output = 0.0
    // Convert
    output = h / 24
    // Return
    return output
}

// Hour to minute
func hourToMinute(Hours h: Double) -> Double {
    // Output
    var output = 0.0
    // Convert
    output = h * 60
    // Return
    return output
}

// Hour to second
func hourToSecond(Hours h: Double) -> Double {
    // Output
    var output = 0.0
    // Convert
    output = h * 3600
    // Return
    return output
}

// Hour to millisecond
func hourToMillisecond(Hours h: Double) -> Double {
    // Output
    var output = 0.0
    // Convert
    output = h * 3600000
    // Return
    return output
}

// Hour to microsecond
func hourToMicrosecond(Hours h: Double) -> Double {
    // Output
    var output = 0.0
    // Convert
    output = h * 3600000000
    // Return
    return output
}

// Hour to nanosecond
func hourToNanosecond(Hours h: Double) -> Double {
    // Output
    var output = 0.0
    // Convert
    output = h * 3600000000000
    // Return
    return output
}

// Switch function to choose what function is called
func fromHoursToX(Hour h: Double, to t: Int) -> Double {
    // Variable to hold output
    var output = 0.0
    switch toMeasurement {
    case 1:
        output = hourToCentury(Hours: h)
    case 2:
        output = hourToDecade(Hours: h)
    case 3:
        output = hourToYear(Hours: h)
    case 4:
        output = hourToMonth(Hours: h)
    case 5:
        output = hourToDay(Hours: h)
    case 6:
        output = h
    case 7:
        output = hourToMinute(Hours: h)
    case 8:
        output = hourToSecond(Hours: h)
    case 9:
        output = hourToMillisecond(Hours: h)
    case 10:
        output = hourToMicrosecond(Hours: h)
    case 11:
        output = hourToNanosecond(Hours: h)
    default:
        break
    }
    return output
}
