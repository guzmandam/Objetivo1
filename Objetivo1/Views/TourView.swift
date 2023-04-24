//
//  TourView.swift
//  Objetivo1
//
//  Created by CEDAM32 on 24/04/23.
//

import SwiftUI

struct TourView: View {
    var tour: Tour
    
    var body: some View {
        ZStack {
            SquareTopImage(image: tour.pueblos[1].imagen, name: tour.nombre)
            
            Text("27 de abril al 2 de mayo")
        }
    }
}

struct TourView_Previews: PreviewProvider {
    static var previews: some View {
        TourView(tour: primer_tour_oax)
    }
}
