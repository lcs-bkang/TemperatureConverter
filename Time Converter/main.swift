//
//  main.swift
//  Time Converter
//
//  Created by Brad Kang on 2021-02-03.
//

import Foundation

// MARK: Input
// Menu
print("This is a time converter.")
print("=========================")
while true {
print("What measurement of time do you want to convert from?")
print("1: Century")
print("2: Decade")
print("3: Year")
print("4: Months")
print("5: Days")
print("6: Hours")
print("7: Minutes")
print("8: Seconds")
print("9: Milliseconds")
print("10: Microseconds")
print("11: Nanoseconds")
print("12: Quit the program")
let fromMeasurement = Int.collectInputInt(withPrompt: "What measurement do you want to convert from? (1 / 2 / 3 / 4 / 5 / 6 / 7 / 8 / 9 / 10 / 11 / 12): ", minimum: 1, maximum: 12)
// Function to choose what the name of the measurement they chose.
let fromMeasurementName = fromMeasurementNames(from: fromMeasurement)

// Checking if they chose to quit the program
switch fromMeasurement {
case 12:
    print("")
    print("The program has been quit.")
    exit(0)
default:
    print("You chose the following measurement of time: \(fromMeasurementName).")
}
// Collect input for the type of measurement they are converting to.
let toMeasurement = Int.collectInputInt(withPrompt: "What measurement do you want to convert to? (1 / 2 / 3 / 4 / 5 / 6 / 7 / 8 / 9 / 10 / 11 ): ", minimum: 1, maximum: 11)
// Function to choose what the name of measurement they are converting to.
let toMeasurementName = toMeasurementNames(to: toMeasurement)
// Tell them what time measurement they are converting to.
print("You are converting to the following measurement of time: \(toMeasurementName).")

// What number they want to convert
let numberToConvert = Double.collectInputDouble(withPrompt: "What number do you want to convert? ", minimum: 0, maximum: nil)
let numberToConvertNum = numberToConvert
// MARK: Processes

// Constant for the name of the time measurement they are converting from
let fromName = fromMeasurementNames(from: fromMeasurement)
// Constant for the name of the time measurement they are converting to
let toName = toMeasurementNames(to: toMeasurement)
// Find the hour equivalent
let hourEquivalent = fromXToHours(Number: numberToConvert, from: fromMeasurement)

//  Convert to their measurement of choice
let output = fromHoursToX(Hour: hourEquivalent, to: toMeasurement)

// MARK: Output

// Print output
print("The converted time measurement of \(numberToConvertNum) in \(fromName) has been converted to \(output) in \(toName)")

// Ask and get reply if they want to repeat.
let quit = String.collectInput(withPrompt: "Do you want to continue converting time measurements? (Y / N): ", acceptableValues: ["Y", "y", "N", "n"])
switch quit {
case "N":
    print("")
    print("Thank you have a nice day.")
    exit(0)
case "n":
    print("")
    print("Thank you have a nice day.")
    exit(0)
default:
    break
}
}
