//
//  ContentView.swift
//  TechnicalTask
//
//  Created by Alonna on 1/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var age: String = ""
    @State private var ticketPrice: String = ""
    
    var body: some View {
        VStack {
            Text("Enter your age")
            TextField("Age", text: $age)
            
            Button(action: calculateTicketPrice) {
                            Text("Get Ticket Price")
                              
                        }
            Text(ticketPrice)
                          

        }
        .padding()
    }
    
    func calculateTicketPrice() {
           guard let ageInt = Int(age), ageInt >= 0 else {
               ticketPrice = "Please enter a valid age."
               return
           }
           
           if ageInt < 13 {
               ticketPrice = "Your ticket price is $10."
           } else if ageInt <= 59 {
               ticketPrice = "Your ticket price is $16."
           } else {
               ticketPrice = "Your ticket price is $12."
           }
       }
}

#Preview {
    ContentView()
}
