//
//  CheckoutView.swift
//  Objetivo1
//
//  Created by CEDAM32 on 25/04/23.
//

import SwiftUI

struct CheckoutView: View {
    var tour: Tour
    
    @State private var name = ""
    @State private var cardNumber = ""
    @State private var expirationDate = ""
    @State private var cvv = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SquareTopImage(tour: tour)
                
                HStack {
                    Text("Total: ")
                        .bold()
                        .font(.title2)
                    
                    Spacer()
                    
                    Text("$ " + String(format: "%.2f", tour.precio))
                        .bold()
                        .font(.title2)
                        .foregroundColor(.gray)
                }.padding()
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Nombre completo")
                    TextField("Emanuel Espinosa", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Número de tarjeta")
                    HStack {
                        Image(systemName: "creditcard.fill")
                            .foregroundColor(.gray)
                        TextField("4152 2324 1256 2321", text: $cardNumber)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                    }
                    
                    Text("Fecha de expiración")
                    HStack {
                        Image(systemName: "calendar")
                            .foregroundColor(.gray)
                        TextField("MM/YY", text: $expirationDate)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                    }
                    .padding(.top, 1)
                    
                    Text("CVV")
                    HStack {
                        Image(systemName: "lock.fill")
                            .foregroundColor(.gray)
                        TextField("CVV", text: $cvv)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.numberPad)
                    }
                }
                .padding()
                
                VStack(spacing: -10){
                    Image(systemName: "info.circle.fill")
                        .foregroundColor(.orange)
                    Text("50% de esta compra se destinará a un fondo monetario para el apoyo de comunidades en situación de pobreza")
                        .foregroundColor(.orange)
                        .font(.callout)
                        .multilineTextAlignment(.center)
                        .padding()
                }

                Button("Pagar") {
                    if isValidCardNumber(cardNumber) && isValidExpirationDate(expirationDate) && isValidCVV(cvv) {
                        // Perform payment logic here
                    } else {
                        // Display error message or alert
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(8)
                .padding(.horizontal)
            }
        }
    }
    
    func isValidCardNumber(_ cardNumber: String) -> Bool {
        // Strip any non-numeric characters from the card number
        let strippedCardNumber = cardNumber.replacingOccurrences(of: "[^0-9]", with: "", options: .regularExpression)
        
        // Check that the card number is between 12 and 19 digits long
        guard strippedCardNumber.count >= 12 && strippedCardNumber.count <= 19 else {
            return false
        }
        
        return true
    }

    func isValidExpirationDate(_ expirationDate: String) -> Bool {
        // Split the expiration date into separate month and year components
        let components = expirationDate.split(separator: "/")
        
        // Ensure that the expiration date has two components (month and year)
        guard components.count == 2 else {
            return false
        }
        
        // Parse the month and year components as integers
        guard let month = Int(components[0]), let year = Int(components[1]) else {
            return false
        }
        
        // Ensure that the month is between 1 and 12, and that the year is greater than or equal to the current year
        let currentYear = Calendar.current.component(.year, from: Date())
        guard month >= 1 && month <= 12 && year >= currentYear else {
            return false
        }
        
        return true
    }

    func isValidCVV(_ cvv: String) -> Bool {
        // Check that the CVV is between 3 and 4 digits long
        guard cvv.count >= 3 && cvv.count <= 4 else {
            return false
        }
        
        return true
    }

}
struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(tour: primer_tour_oax)
    }
}
