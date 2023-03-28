//
//  EmailRegister.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 16.03.2023.
//

import SwiftUI

struct EmailRegister: View {
    @Binding var email: String
    @State private var textEmail: String = ""
    @State private var isEmailValid: Bool = true
    
    var body: some View {
        TextField("Email", text: $email, onEditingChanged: { (isChanged) in
            if !isChanged {
                if self.textFieldValidatorEmail(self.email) {
                    self.isEmailValid = true
                } else {
                    self.isEmailValid = false
                    self.email = ""
                }
            }
        })
        .font(.custom(lightFont, size: 14))
        .foregroundColor(blackColor)
        .padding()
        .background(grayBackgroundColor)
        .frame(width: 289, height: 29)
        .cornerRadius(15.0)
        
        if !isEmailValid {
            Text("Email is Not Valid")
                .font(.callout)
                .foregroundColor(Color.red)
        }
    }
    
    
    func textFieldValidatorEmail(_ string: String) -> Bool {
        if string.count > 100 {
            return false
        }
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: string)
    }
}


struct EmailRegister_Previews: PreviewProvider {
    static var previews: some View {
        EmailRegister(email: .constant("Email"))
    }
}
