//
//  TourCard.swift
//  Objetivo1
//
//  Created by CEDAM32 on 25/04/23.
//

import SwiftUI

struct TourCard: View {
    var tour: Tour
    
    var body: some View {
        TitleTour(tour: tour).overlay(RoundedRectangle(cornerRadius: 20).stroke(.orange, lineWidth: 5)).padding()
    }
}

struct TourCard_Previews: PreviewProvider {
    static var previews: some View {
        TourCard(tour: primer_tour_oax)
    }
}
