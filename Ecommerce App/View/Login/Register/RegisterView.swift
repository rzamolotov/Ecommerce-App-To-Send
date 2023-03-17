//
//  RegisterView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 16.03.2023.
//

import SwiftUI

struct RegisterView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var authSuccess: Bool = false
    @State var authFailure: Bool = false
    @State var skipAuth: Bool = false
    
    var body: some View {
        VStack{
            Text("Sign In")
                .font(.custom(semiBoldFont, size: 30))
                .foregroundColor(blackColor)
                .padding(.bottom, 50)
            
            UsernameRegister(firstName: $firstName, lastName: $lastName)
                .padding(.bottom, 30)
            EmailRegister(email: $email)
                .padding(.bottom, 30)
            SignInButtonView(username: $username, password: $password, authSuccess: $authSuccess, authFailure: $authFailure)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
