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
                    .foregroundColor(.orange)
                
                Divider()
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width: 300)

                NavigationLink {
                } label: {
                    MenuButton(text: "Estados")
                }
                NavigationLink {
                    ToursView()
                } label: {
                    MenuButton(text: "Tours")
                }
                NavigationLink {
                    NosotrosView()
                } label: {
                    MenuButton(text: "Nosotros")
                }
                NavigationLink {
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
