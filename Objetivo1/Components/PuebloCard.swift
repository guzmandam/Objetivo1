//
//  PuebloCard.swift
//  Objetivo1
//
//  Created by CEDAM32 on 25/04/23.
//

import SwiftUI

struct PuebloCard: View {
    var pueblo: PuebloMagico
    
    var body: some View {
        PuebloTitle(name: pueblo.nombre, description: pueblo.descripcion, state: pueblo.estado).overlay(RoundedRectangle(cornerRadius: 20).stroke(.orange, lineWidth: 5)).padding()
    }
}

struct PuebloCard_Previews: PreviewProvider {
    static var previews: some View {
        PuebloCard(pueblo: mitla)
    }
}
