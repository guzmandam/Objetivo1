//
//  MenuView.swift
//  Objetivo1
//
//  Created by CEDAM32 on 24/04/23.
//

import SwiftUI

struct MenuView: View {
    private var menuItems: [String] = [ "Estados", "Tours", "Nosotros", "Contactanos"]

    var body: some View {
            VStack(spacing: 20) {
                Text("Inicio")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color("cafe"))
                
                Divider()
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width: 300)

                NavigationLink {
                    EstadosView()
                } label: {
                    MenuButton(text: "Estados")
                }
                NavigationLink {
                    ToursView(tours: todosTours)
                } label: {
                    MenuButton(text: "Recorridos")
                }
                NavigationLink {
                    NosotrosView()
                } label: {
                    MenuButton(text: "Nosotros")
                }
                NavigationLink {
                    FormView()
                } label: {
                    MenuButton(text: "Contáctanos")
                }
            }
        }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
