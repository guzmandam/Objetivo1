//
//  EstadosView.swift
//  Objetivo1
//
//  Created by CEDAM32 on 25/04/23.
//

import SwiftUI

struct EstadosView: View {
    var body: some View {
        VStack(spacing: 100) {
            NavigationLink {
                OaxacaView()
            }
            label: {
                TitleEstado(estado: oaxacaE)
                    .foregroundColor(.black)
            }
            NavigationLink {
                ChiapasView()
            }
        label: {
            TitleEstado(estado: chiapasE)
                .foregroundColor(.black)
        }
            NavigationLink {
                GuerreroView()
            }
        label: {
            TitleEstado(estado: guerreroE)
                .foregroundColor(.black)
        }
        }
    }
}

struct EstadosView_Previews: PreviewProvider {
    static var previews: some View {
        EstadosView()
    }
}
