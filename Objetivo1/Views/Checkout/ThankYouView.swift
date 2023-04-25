//
//  ThankYouView.swift
//  Objetivo1
//
//  Created by CEDAM32 on 25/04/23.
//

import SwiftUI
struct ThankYouView: View {
    var body: some View {
        VStack {
            Text("Gracias por tu compra")
                .font(.title)
                .bold()
                .padding(.bottom)
            
            Image(systemName: "checkmark.seal.fill")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .foregroundColor(.green)
                .frame(width: 70, height: 90)
            
            Text("Con tu apoyo lograremos llevar a más pueblos al reconocimiento nacional")
                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .frame(width: 300.0, height: 100.0)
            
            NavigationLink {
                MenuView()
            } label: {
                MenuButton(text: "Volver a Inicio")
            }
        }
    }
}
struct ThankYouView_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouView()
    }
}

