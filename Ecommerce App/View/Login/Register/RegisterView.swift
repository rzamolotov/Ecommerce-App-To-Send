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
    
    
    var body: some View {
        VStack{
            UsernameRegister(firstName: $firstName, lastName: $lastName)
                .padding(.bottom, 30)
            EmailRegister(email: $email)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
