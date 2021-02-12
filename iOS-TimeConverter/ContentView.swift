//
//  ContentView.swift
//  iOS-TimeConverter
//
//  Created by Brad Kang on 2021-02-12.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    @State private var fromTime = timeUnits.century
    @State private var input: String = ""
    @State private var toTime = timeUnits.century
    
    // MARK: Computed Properties
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
