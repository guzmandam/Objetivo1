//
//  SquareTopImage.swift
//  Objetivo1
//
//  Created by CEDAM32 on 24/04/23.
//

import SwiftUI

struct SquareTopImage: View {
    var tour: Tour
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack() {
                Image(self.tour.pueblos[1].imagen)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: /*@START_MENU_TOKEN@*/350.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .clipShape(Rectangle())
                    .overlay {
                        Rectangle().stroke(.orange, lineWidth: 4)
                    }
                    .shadow(radius: 7)
                    .overlay(Text(self.tour.nombre)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .bold()
                        .foregroundColor(.white))
            }
            .padding()
        }
    }
}

struct SquareTopImage_Previews: PreviewProvider {
    static var previews: some View {
        SquareTopImage(tour: primer_tour_oax)
    }
}
