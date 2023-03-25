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
        VStack(alignment: .center){
            Text("Sign In")
                .font(.custom(semiBoldFont, size: 30))
                .foregroundColor(blackColor)
                .padding(.bottom, 50)
            VStack{
                UsernameRegister(firstName: $vm.username, lastName: $vm.lastname)
                    .padding(.bottom, 30)
                EmailRegister(email: $vm.email)
                    .padding(.bottom, 30)
                SignInButtonView()
                RegisterLogInButton()
                    .padding(.bottom, 50)
                
                GoogleAppleRegisterButton()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(colorBackground)
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
