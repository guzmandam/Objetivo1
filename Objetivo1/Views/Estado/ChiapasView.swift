//
//  ChiapasView.swift
//  Objetivo1
//
//  Created by CEDAM32 on 25/04/23.
//

import SwiftUI
struct ChiapasView: View {
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("Chiapas")
                        .font(.largeTitle)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
                        .bold()
                        .padding(.bottom)
                        
                    Text("Chiapas, muestra de la gran diversidad en flora y fauna que existe en México, la Selva Lacandona reúne alrededor de 500 especies de animales y más de 3000 especies de plantas, una belleza naturalc con reconocimiento mundial.")
                        .font(.title3)
                        .padding(.bottom)
                        .bold()
                    
                    Text("Sin embargo es de las poblaciones más afecta en su economía, con repercusiones en otros aspectos como la educación, calidad de vida y vivienda.")
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
                Text("San Juan Cacun")
                    .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                
                Text("Chanal")
                .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                
                Text("Aldama")
                .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                
                Text("Chalchihuitán")
                .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                
                Text("Chenalhó")
                .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                
                Text("San Andrés Duraznal")
                .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                Divider()
                }
            MenuButton(text: "Tours Disponibles")
                .padding(.top)
                .bold()
            }
        }
        }
struct ChiapasView_Preview: PreviewProvider {
    static var previews: some View {
        ChiapasView()
    }
}
