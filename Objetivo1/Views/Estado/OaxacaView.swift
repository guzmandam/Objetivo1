//
//  OaxacaView.swift
//  Objetivo1
//
//  Created by CEDAM32 on 25/04/23.
//

import SwiftUI
struct OaxacaView: View {
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("Oaxaca")
                        .font(.largeTitle)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
                        .bold()
                        .padding(.bottom)
                    
                    Text("Reconocido por sus paisajes naturales con gran diversidad, desde las playas por el pacífico, mientras que al interior se encuentran montañas, bosques y selvas. A pesar de las grandes atracciones turísticas que tiene, tiene 9 municipios en situación de pobreza y muchas veces se suele infravalorar los atractivos culturales del estado")
                        .font(.title3)
                        .padding(.bottom)
                        .bold()
                    
                }
                Divider()
                Text("Municipios en pobreza")
                    .font(.title2)
                    .foregroundColor(Color(hue: 0.066, saturation: 1.0, brightness: 0.611))
                    .bold()
                Divider()
            }.padding()
            VStack {
                Text("San Simón Zahuatián")
                    .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                
                Text("Coicoyán de las Flores")
                    .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                
                Text("San Francisco Teopan")
                    .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                
                Text("San Lucas Camotlán")
                    .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                
                Text("San Miguel Tilquiápam")
                    .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                
                Text("Santiago Amoltepec")
                    .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                
                Text("San Miguel Mixtepec")
                    .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                
                Text("Santiago Tlazoyaltepec")
                
                    .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                Divider()
            }
            MenuButton(text: "Tours Disponibles")
                .padding(.top)
                .bold()
        }
    }
}
struct OaxacaView_Previews: PreviewProvider {
    static var previews: some View {
        OaxacaView()
    }
}

