//
//  LoginButtonView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 16.03.2023.
//

import SwiftUI

struct LoginButtonView: View {
    @State var vm = ViewModel()
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        Button {
            vm.authenticated.toggle()
            withAnimation() {
                if vm.authenticated == true {
                    viewRouter.currentPage = .landing
                }
            }
        } label: {
            ZStack{
                Rectangle()
                    .frame(width: 289, height: 46)
                    .foregroundColor(violetColor)
                    .cornerRadius(15.0)
                Text("Login")
                    .font(.custom(boldFont, size: 14))
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
}


struct LoginButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonView()
    }
}
