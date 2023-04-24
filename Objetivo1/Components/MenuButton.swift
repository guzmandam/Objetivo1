//
//  MenuButton.swift
//  Objetivo1
//
//  Created by CEDAM32 on 24/04/23.
//

import SwiftUI

struct MenuButton: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .frame(width: 300, height: 50)
            .background(.orange)
            .cornerRadius(20)
            .bold()
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton(text: "Hola")
    }
}
