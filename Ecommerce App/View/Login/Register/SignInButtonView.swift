//
//  SignInButtonView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 16.03.2023.
//

import SwiftUI

struct SignInButtonView: View {
    @State var vm = ViewModel()
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        Button(action: {
            viewRouter.currentPage = .landing
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
        SignInButtonView()
    }
}
