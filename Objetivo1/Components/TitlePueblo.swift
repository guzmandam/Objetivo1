//
//  PuebloTitleView.swift
//  Objetivo1
//
//  Created by CEDAM32 on 24/04/23.
//

import SwiftUI

struct PuebloTitle: View {
    var name: String
    var description: String
    var state: String
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text(self.name)
                    .font(.title)
                    .bold()
                    .foregroundColor(Color("cafe"))
                
                HStack {
                    Text(self.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text(self.description)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
            }
            .padding()
        }
    }
}

struct PuebloTitle_Previews: PreviewProvider {
    static var previews: some View {
        PuebloTitle(name: "Santa Monica", description: "Iglesia en un pueblo", state: "Oaxaca")
    }
}
