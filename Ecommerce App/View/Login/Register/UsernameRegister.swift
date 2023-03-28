//
//  UsernameRegister.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 16.03.2023.
//

import SwiftUI

struct UsernameRegister: View {
    @StateObject var vm = ViewModel()
    @Binding var firstName: String
    @Binding var lastName: String
    @State private var showingAlert = false
    
    var body: some View {
        VStack{
            TextField("First name", text: $firstName)
                .font(.custom(lightFont, size: 14))
                .foregroundColor(blackColor)
                .padding()
                .background(grayBackgroundColor)
                .frame(width: 289, height: 29)
                .cornerRadius(15.0)
                .padding(.bottom, 30)
            
            TextField("Last name", text: $lastName)
                .font(.custom(lightFont, size: 14))
                .foregroundColor(blackColor)
                .padding()
                .background(grayBackgroundColor)
                .frame(width: 289, height: 29)
                .cornerRadius(15.0)
        }
       
    }
}

struct UsernameRegister_Previews: PreviewProvider {
    static var previews: some View {
        UsernameRegister(firstName: .constant("First Name"), lastName: .constant("Last Name"))
    }
}
