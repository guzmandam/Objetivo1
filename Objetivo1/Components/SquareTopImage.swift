//
//  SquareTopImage.swift
//  Objetivo1
//
//  Created by CEDAM32 on 24/04/23.
//

import SwiftUI

struct SquareTopImage: View {
    var image: String
    var name: String
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack() {
                Image(self.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: /*@START_MENU_TOKEN@*/350.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .clipShape(Rectangle())
                    .overlay {
                        Rectangle().stroke(.orange, lineWidth: 4)
                    }
                    .shadow(radius: 7)
                Text(self.name)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .bold()
                    .offset(y: -70)
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()
        }
    }
}

struct SquareTopImage_Previews: PreviewProvider {
    static var previews: some View {
        SquareTopImage(image: "mitla", name: "Mitla")
    }
}
