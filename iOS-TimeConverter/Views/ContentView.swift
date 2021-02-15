//
//  ContentView.swift
//  iOS-TimeConverter
//
//  Created by Brad Kang on 2021-02-12.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    @State private var fromTime: timeUnits = .century
    @State private var input: String = ""
    @State private var toTime: timeUnits = .century
    
    // MARK: Computed Properties
    private var toHours: Double {
        return fromXToHours(Number: input, from: fromTime)
    }
    private var output: String {
        return fromHoursToX(Hour: toHours, to: toTime)
    }
    var body: some View {
        
        NavigationView {
            Form {
                // UI To select from measurement
                Section(header: Text("What measurement of time are you converting from?")) {

                    Picker("From time units:", selection: $fromTime) {
                        Text(timeUnits.century.rawValue)
                            .tag(timeUnits.century)
                        Text(timeUnits.decade.rawValue)
                            .tag(timeUnits.decade)
                        Text(timeUnits.year.rawValue)
                            .tag(timeUnits.year)
                        Text(timeUnits.month.rawValue)
                            .tag(timeUnits.month)
                        Text(timeUnits.day.rawValue)
                            .tag(timeUnits.day)
                        Text(timeUnits.hour.rawValue)
                            .tag(timeUnits.hour)
                        Text(timeUnits.minute.rawValue)
                            .tag(timeUnits.minute)
                        Text(timeUnits.second.rawValue)
                            .tag(timeUnits.second)
                        Text(timeUnits.millisecond.rawValue)
                            .tag(timeUnits.millisecond)
                        Text(timeUnits.microsecond.rawValue)
                            .tag(timeUnits.microsecond)
                        Text(timeUnits.nanosecond.rawValue)
                            .tag(timeUnits.nanosecond)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
            }
        }
        
        
        
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
