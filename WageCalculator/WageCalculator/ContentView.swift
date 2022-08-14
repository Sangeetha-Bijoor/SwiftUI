//
//  ContentView.swift
//  WageCalculator
//
//  Created by Sangeetha B.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var selectedNumberOfPeople = 2
    @State private var selectedPercent = 20
    @FocusState private var isAmountFoccussed: Bool
    private var percentages = [20,40,60,80]
    
    var totalPerPerson: Double {
        let peopleCount = Double(selectedNumberOfPeople)
        let tipSelection = Double(selectedPercent)
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        return amountPerPerson
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "₹"))
                        .keyboardType(.decimalPad)
                        .focused($isAmountFoccussed)
                    
                    Picker("Select Number Of People", selection: $selectedNumberOfPeople) {
                        ForEach (2...100, id: \.self) {
                            Text("\($0) People")
                        }
                    }
                }
                
                Section {
                    Picker("Select", selection: $selectedPercent) {
                        ForEach (percentages, id: \.self) {
                            Text("\($0) %")
                        }
                    }.pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to have")
                }
                
                Section {
                    Text("Total Amount : \(totalPerPerson)")
                }
            }.navigationTitle("Calculator")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done"){
                            isAmountFoccussed = false
                        }
                    }
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
