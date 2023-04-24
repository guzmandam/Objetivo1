//
//  SignupView.swift
//  Objetivo1
//
//  Created by CEDAM32 on 24/04/23.
//

import SwiftUI

struct SignupView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    private func isValidPassword(_ password: String) -> Bool {
        // minimum 6 characters long
        // 1 uppercase character
        // 1 special char
        
        let passwordRegex = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])(?=.*[A-Z]).{6,}$")
        
        return passwordRegex.evaluate(with: password)
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Text("Registrate")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.orange)
                        
                        Spacer()
                    }
                    .padding()
                    .padding(.top)
                                    
                    HStack {
                        Image(systemName: "person").foregroundColor(.orange)
                        TextField("Nombre de usuario", text: $username)
                        
                        Spacer()
                        
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .foregroundColor(.orange)
                        
                    )
                    
                    .padding()
                    
                    
                    HStack {
                        Image(systemName: "lock").foregroundColor(.orange)
                        SecureField("Contraseña", text: $password)
                        
                        Spacer()
                        
                        if(password.count != 0) {

                            Image(systemName: isValidPassword(password) ? "checkmark" : "xmark")
                                .fontWeight(.bold)
                                .foregroundColor(isValidPassword(password) ? .green : .red)
                        }
                        
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .foregroundColor(.orange)
                        
                    )
                    .padding()
                    
                    NavigationLink {
                        LoginView()
                    } label: {
                        Text("¿Ya tienes cuenta?")
                        .foregroundColor(.orange.opacity(0.7))
                    }
                    
    //                Spacer()
    //                Spacer()
                    
                    NavigationLink {
                        MenuView()
                    } label: {
                            Text("Comenzar")
                                .foregroundColor(.white)
                                .font(.title3)
                                .bold()
                            
                                .frame(maxWidth: .infinity)
                                .padding()
                            
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.orange)
                                )
                                .padding(.horizontal)
                    }
                    
                    
                }
                
            }
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
