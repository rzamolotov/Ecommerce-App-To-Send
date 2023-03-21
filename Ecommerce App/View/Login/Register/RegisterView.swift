//
//  RegisterView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 16.03.2023.
//

import SwiftUI

struct RegisterView: View {
    
    @State var vm = ViewModel()
    @State var email: String = ""
    
    
    var body: some View {
        VStack{
            Text("Sign In")
                .font(.custom(semiBoldFont, size: 30))
                .foregroundColor(blackColor)
                .padding(.bottom, 50)
            
            UsernameRegister(firstName: $vm.username, lastName: $vm.username)
                .padding(.bottom, 30)
            EmailRegister(email: $email)
                .padding(.bottom, 30)
            SignInButtonView()
        }
        .alert("Acces denied", isPresented: $vm.invalid) {
            Button("Dismiss", action: vm.logPressed)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
