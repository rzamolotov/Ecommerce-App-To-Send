//
//  GoogleAppleRegisterButton.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 25.03.2023.
//

import SwiftUI

struct GoogleAppleRegisterButton: View {
    @State var vm = ViewModel()
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button {
                    vm.authenticated.toggle()
                    withAnimation() {
                        if vm.authenticated == true {
                            viewRouter.currentPage = .landing
                        }
                    }
                } label: {
                    Image("googleButton")
                    Text("Sign in with Google")
                }
            }
            .padding(.bottom, 30)
            
            HStack {
                Button {
                    vm.authenticated.toggle()
                    withAnimation() {
                        if vm.authenticated == true {
                            viewRouter.currentPage = .landing
                        }
                    }
                } label: {
                    Image("appleButton")
                    Text("Sign in with Apple")
                }
            }
        }
        .foregroundColor(blackColor)
        .font(.custom(mediumFont, size: 14))
        
    }
}

struct GoogleAppleRegisterButton_Previews: PreviewProvider {
    static var previews: some View {
        GoogleAppleRegisterButton()
    }
}
