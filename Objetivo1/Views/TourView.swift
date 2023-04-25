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
        VStack() {
            SquareTopImage(tour: tour)
            
            HStack {
                Text("Fechas: ")
                    .font(.title2)
                    .bold()
                
                Spacer()
                Text("27 de abril al 2 de mayo")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.gray)
            }.padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(0..<tour.pueblos.count, id: \.self) {
                        item in
                        NavigationLink {
                            PuebloView(pueblo: tour.pueblos[item])
                        } label: {
                            PuebloCard(pueblo: tour.pueblos[item])
                        }
                    }
                }
            }
            
            NavigationLink {
                CheckoutView(tour: tour)
            }
        label: {
                Button("Pagar") {}
                .frame(maxWidth: .infinity)
                .padding(.top)
                .padding(.bottom)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(8)
                .padding(.horizontal)
            }

        }
    }
}

struct TourView_Previews: PreviewProvider {
    static var previews: some View {
        TourView(tour: primer_tour_oax)
    }
}
