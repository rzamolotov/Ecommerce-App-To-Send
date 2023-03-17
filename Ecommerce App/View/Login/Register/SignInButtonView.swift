//
//  SignInButtonView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 16.03.2023.
//

import SwiftUI

struct SignInButtonView: View {
    
    @Binding var username: String
    @Binding var password: String
    @Binding var authSuccess: Bool
    @Binding var authFailure: Bool
//    @EnvironmentObject var viewRouter: ViewRouter
    
    let validUserName = "123"
    let validPassword = "123"
    
    var body: some View {
        Button(action: { //consider disabling until details are entered
            if (self.username == validUserName && self.password == validPassword) {
                self.authSuccess = true
                self.authFailure = false
//                withAnimation(){
//                    viewRouter.currentPage = .landing
//                }
            } else {
                self.authFailure = true
                self.authSuccess = false
            }
        }) {
            ZStack{
                Rectangle()
                    .frame(width: 289, height: 46)
                    .foregroundColor(violetColor)
                    .cornerRadius(15.0)
                Text("Sign In")
                    .font(.custom(boldFont, size: 14))
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
}


struct SignInButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignInButtonView(username: .constant("123"), password: .constant("123"), authSuccess: .constant(true), authFailure: .constant(false))
    }
}
