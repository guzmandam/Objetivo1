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
        VStack(alignment: .leading, spacing: 16) {
            Text("¿Tienes algún lugar que quieras compartir al mundo?")
                .font(.title)
                .bold()
                .foregroundColor(.orange)
            Text("Cuéntanos más y así lograremos que llegues a más personas!")
                .font(.headline)
                .foregroundColor(.gray)
            
            Text("¿En dónde se encuentra?")
                .bold()
            Picker(selection: $state, label: Text("Estado")) {
                ForEach(estados.allCases) { estado in
                    Text(estado.rawValue)
                }
            }
            .pickerStyle(.automatic)
            
            
            Text("Descripción del lugar")
                .bold()
            TextField("Nuestra casa es un espacio donde la gente puede...", text: $description)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Correo electrónico")
                .bold()
            TextField("emanuel@casaturista.com", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Enviar") {
                self.isSubmitted = true
                print(self.isSubmitted)
            }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            
            Spacer()
            }
        .padding(.top, 1)
        .padding()
        

    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
