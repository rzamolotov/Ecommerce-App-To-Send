//
//  LoginView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 16.03.2023.
//

import SwiftUI

struct LoginView: View {
    @State var vm = ViewModel()
    
    var body: some View {
        VStack{
            UsernameLoginView(username: $vm.username)
                .padding(.bottom, 32)
            PasswordLoginView(password: $vm.password)
                .padding(.bottom, 100)
            LoginButtonView()
  
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
