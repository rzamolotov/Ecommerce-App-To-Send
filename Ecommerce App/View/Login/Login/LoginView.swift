//
//  LoginView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 16.03.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var authSuccess: Bool = false
    @State var authFailure: Bool = false
    @State var skipAuth: Bool = false
    
    var body: some View {
        VStack{

            UsernameLoginView(username: $username)
                .padding(.bottom, 32)
            PasswordLoginView(password: $password)
                .padding(.bottom, 100)
            LoginButtonView(username: $username, password: $password, authSuccess: $authSuccess, authFailure: $authFailure)
 
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
