//
//  PasswordLoginView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 16.03.2023.
//

import SwiftUI

struct PasswordLoginView: View {
    @Binding var password: String
    @State private var isSecureField: Bool = true
    
    var body: some View {
        HStack{
            if isSecureField {
                SecureField("Password", text: $password)
            } else {
                TextField(password, text: $password)
            }
        }
        .font(.custom(lightFont, size: 14))
        .foregroundColor(blackColor)
        .padding()
        .background(grayBackgroundColor)
        .frame(width: 289, height: 29)
        .cornerRadius(15.0)
        .overlay(alignment: .trailing) {
            Image(systemName: isSecureField ? "eye.slash" : "eye")
                .padding()
                .foregroundColor(blackColor)
                .onTapGesture {
                    isSecureField.toggle()
                }
        }
        
    }
}

struct PasswordLoginView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordLoginView(password: .constant("Password"))
    }
}
