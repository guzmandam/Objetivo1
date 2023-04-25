//
//  TitleEstado.swift
//  Objetivo1
//
//  Created by CEDAM32 on 25/04/23.
//

import SwiftUI

struct TitleEstado: View {
    var estado: Estado
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                Text(estado.nombre)
                    .font(.title)
                    .bold()
                
                HStack {
                    Text(estado.lema)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.top, -1)
            }
            Spacer()
            Image(estado.imagen)
                .renderingMode(.none)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 70.0)
        }.padding()
    }
}

struct TitleEstado_Previews: PreviewProvider {
    static var previews: some View {
        TitleEstado(estado: oaxacaE)
    }
}
