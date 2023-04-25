//
//  ToursView.swift
//  Objetivo1
//
//  Created by CEDAM32 on 25/04/23.
//

import SwiftUI

struct ToursView: View {
    var tours: [Tour]
    var body: some View {
        VStack {
            Text("Recorridos Disponibles")
                .font(.title)
                .bold()
                .foregroundColor(.orange)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(0..<tours.count, id: \.self) {
                        item in
                        NavigationLink {
                            TourView(tour: tours[item])
                        }
                    label: {
                            TourCard(tour: tours[item])
                            .foregroundColor(Color("cafe"))
                        }
                    }
                }
            }
        }
    }
}

struct ToursView_Previews: PreviewProvider {
    static var previews: some View {
        ToursView(tours: todosTours)
    }
}
