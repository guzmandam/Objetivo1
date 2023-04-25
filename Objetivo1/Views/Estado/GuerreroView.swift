//
//  GuerreroView.swift
//  Objetivo1
//
//  Created by CEDAM32 on 25/04/23.
//

import SwiftUI
struct GuerreroView: View {
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("Guerrero")
                        .font(.largeTitle)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
                        .bold()
                        .padding(.bottom)
                        
                    Text("Un estado que conserva como identidad parte de sus vestígios precolombinos, donde las culturas prehispánicas son recordadas a partir de las zonas a rqueológicas, sus escultural, los platillos gastronómicos y su contribución artesanal. ")
                        .font(.title3)
                        .padding(.bottom)
                        .bold()
                                        
                    Text("Sin duda alguna, es un estado que tiene una riqueza en cuanto a cultura, no obstante, su población se encuentra situación de pobreza y a la fecha tiene algunos de sus municipios entre el listado de Municipios con mayor pobreza en la República mexicana")
                        .font(.title3)
                        .padding(.bottom)
                        .bold()
                }.padding()
                Divider()
                Text("Municipios en pobreza")
                    .font(.title2)
                    .foregroundColor(Color(hue: 0.066, saturation: 1.0, brightness: 0.611))
                    .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                    .bold()
                Divider()
            }
            VStack {
                Text("Chochoapa el Grande")
                    .font(.title3)
                    .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                Divider()
                }
            NavigationLink {
                ToursView(tours: toursguerrero)
            } label: {
                MenuButton(text: "Recorridos Disponibles")
                    .padding(.top)
                    .bold()
            }
            }
        }
        }
struct GuerreroView_Preview: PreviewProvider {
    static var previews: some View {
        GuerreroView()
    }
}

