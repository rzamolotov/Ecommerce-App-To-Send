//
//  UsernameLoginView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 16.03.2023.
//

import SwiftUI

struct UsernameLoginView: View {
    @Binding var username: String
    
    var body: some View {
        TextField("First Name", text: $username)
            
            .font(.custom(lightFont, size: 14))
            .padding()
            .background(grayBackgroundColor)
            .frame(width: 289, height: 29)
            .cornerRadius(15.0)
    }
}

struct UsernameLoginView_Previews: PreviewProvider {
    static var previews: some View {
        UsernameLoginView(username: .constant("First Name"))
    }
}
