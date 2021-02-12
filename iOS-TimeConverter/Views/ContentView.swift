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
                Section(header: Text("What measurement of time are you converting from?")) {
                    Text(timeUnits.century)
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
