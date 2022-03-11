//
//  ContentView.swift
//  Converter
//
//  Created by Ross Phillips on 3/11/22.
//

import SwiftUI

struct ContentView: View {
	@State private var input = 100.0
	@State private var inputUnit = "Meters"
	@State private var outputUnit = "Kilometers"
	
	let units = ["Feet", "Kilometers", "Meters", "Miles", "Yards"]
	
	var body: some View {
		NavigationView {
			Form {
				Section {
					TextField("Amount", value: $input, format: .number)
						.keyboardType(.decimalPad)
				} header: {
					Text("Amount to convert")
				}
				
				Picker("Convert from", selection: $inputUnit) {
					ForEach(units, id: \.self) {
						Text($0)
					}
				}
				
				Picker("Convert to", selection: $outputUnit) {
					ForEach(units, id: \.self) {
						Text($0)
					}
				}
				
				Section {
					Text("???")
				} header: {
					Text("Result")
				}
			}
			.navigationTitle("Converter")
		}
	}
	
	struct ContentView_Previews: PreviewProvider {
		static var previews: some View {
			ContentView()
		}
	}
}
