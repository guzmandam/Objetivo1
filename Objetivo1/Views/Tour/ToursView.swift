//
//  ToursView.swift
//  Objetivo1
//
//  Created by CEDAM32 on 25/04/23.
//

import SwiftUI

struct ToursView: View {
    var body: some View {
        VStack {
            Text("Tours Disponibles")
                .font(.title)
                .bold()
                .foregroundColor(.orange)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(0..<todosTours.count, id: \.self) {
                        item in
                        NavigationLink {
                            TourView(tour: todosTours[item])
                        }
                    label: {
                            TourCard(tour: todosTours[item])
                        }
                    }
                }
            }
        }
    }
}

struct ToursView_Previews: PreviewProvider {
    static var previews: some View {
        ToursView()
    }
}
