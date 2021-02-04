//
//  main.swift
//  Time Converter
//
//  Created by Brad Kang on 2021-02-03.
//

import Foundation

// MARK: Input

print("This is a time converter.")
print("=========================")
print("What measurement of time do you want to convert from?")
print("Y: Years")
print("MO: Months")
print("D: Days")
print("H: Hours")
print("M: Minutes")
print("S: Seconds")
print("Q: Quit the program")
let fromMeasurement = String.collectInput(withPrompt: "What measurement do you want to convert from? (Y / MO / D / H / M / S / Q): ", acceptableValues: ["Y", "y", "MO", "mo", "d", "D", "M", "m", "H", "h", "s", "S", "Q", "q"])
