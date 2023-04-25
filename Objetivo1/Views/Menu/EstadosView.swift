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
                    .foregroundColor(.orange)
            }
            NavigationLink {
                ChiapasView()
            }
        label: {
            TitleEstado(estado: chiapasE)
                .foregroundColor(.orange)
        }
            NavigationLink {
                GuerreroView()
            }
        label: {
            TitleEstado(estado: guerreroE)
                .foregroundColor(.orange)
        }
        }
    }
}

struct EstadosView_Previews: PreviewProvider {
    static var previews: some View {
        EstadosView()
    }
}
