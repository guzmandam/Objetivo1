//
//  TitleTour.swift
//  Objetivo1
//
//  Created by CEDAM32 on 25/04/23.
//

import SwiftUI

struct TitleTour: View {
    var tour: Tour
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text(tour.nombre)
                    .font(.title)
                    .bold()
                
                HStack {
                    Text("$ " + String(format: "%.2f", tour.precio))
                    Spacer()
                    Text("27 de mayo al 2 de junio")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.top, -1)
                
                Divider()
            
            }
            .padding()
        }
    }
}

struct TitleTour_Previews: PreviewProvider {
    static var previews: some View {
        TitleTour(tour: primer_tour_oax)
    }
}
