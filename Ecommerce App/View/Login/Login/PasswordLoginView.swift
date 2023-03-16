//
//  PasswordLoginView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 16.03.2023.
//

import SwiftUI

struct PasswordLoginView: View {
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
            .font(.custom(lightFont, size: 14))
            .padding()
            .background(grayBackgroundColor)
            .frame(width: 289, height: 29)
            .cornerRadius(15.0)
    }
}

struct PasswordLoginView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordLoginView(password: .constant("Password"))
    }
}
