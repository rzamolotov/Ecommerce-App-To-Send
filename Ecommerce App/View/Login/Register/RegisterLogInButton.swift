//
//  RegisterLogInButton.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 25.03.2023.
//

import SwiftUI

struct RegisterLogInButton: View {
    var body: some View {
        HStack {
            Text("Alredy have an account?")
                .foregroundColor(grayFontColor)
            NavigationLink {
                LoginView()
            } label: {
                Text("Log in")
                    .foregroundColor(.blue)
            }
            Spacer()
        }
        .frame(width: 289, height: 29)
        .font(.custom(lightFont, size: 12))
    }
}

struct RegisterLogInButton_Previews: PreviewProvider {
    static var previews: some View {
        RegisterLogInButton()
    }
}
