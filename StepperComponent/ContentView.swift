//
//  ContentView.swift
//  StepperComponent
//
//  Created by Mickael Mas on 26/03/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var value1 = 0.0
    @State private var value2 = 0.0
    @State private var value3 = 0.0
    @State private var value4 = 0.0
    @State private var value5 = 0.0

    var body: some View {
        Form {
            Section {
                VStack {
                    Text("Stepper simple")
                    Stepper("Quantité : \(value1)", value: $value1)
                }
            }
            
            Section {
                VStack {
                    Text("Stepper avec plage de 0 à 100")
                    Stepper("Quantité : \(value2)", value: $value2, in: 0...100)
                }
            }
            
            Section {
                VStack {
                    Text("Stepper avec plage de 0 à 100 avec un pas de 10")
                    Stepper("Quantité : \(value3)", value: $value3, in: 0...100, step: 10)
                }
            }
            
            Section {
                VStack {
                    Text("Stepper avec option increment/décrément")
                    Stepper("Quantité : \(value4)", onIncrement: {
                        self.value4 += 1
                    }, onDecrement: {
                        self.value4 -= 1
                    })
                }
            }
            
            Section {
                VStack {
                    Text("Stepper avec un label")
                    Stepper(onIncrement: {
                        self.value5 += 1
                    }, onDecrement: {
                      self.value5 -= 1

                    }) {
                        HStack {
                            Image(systemName: "pencil.circle.fill")
                                .font(.largeTitle)
                            Text("Quantité : \(Int(value5))")
                        }
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
