//
//  FormView.swift
//  Objetivo1
//
//  Created by CEDAM32 on 25/04/23.
//

import SwiftUI

struct FormView: View {
    enum estados: String, CaseIterable, Identifiable {
        case oaxaca = "Oaxaca"
        case guerrero = "Guerrero"
        case chiapas = "Chiapas"
        
        var id: String { self.rawValue }
    }
    
    @State private var name = ""
    @State private var state: estados = .oaxaca
    @State private var description = ""
    @State private var email = ""
    @State private var isSubmitted = false
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Picker(selection: $state, label: Text("State")) {
                ForEach(estados.allCases) { estado in
                    Text(estado.rawValue)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            TextField("Description", text: $description)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.emailAddress)
                .padding()
            
            Button(action: {
                // Submit the form and set the "isSubmitted" flag to true
                self.isSubmitted = true
            }) {
                Text("Submit")
            }
            .padding()
            
            if isSubmitted {
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.green)
            }
            
            Spacer()
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
