//
//  LogOutButton.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 21.03.2023.
//

import SwiftUI

struct LogOutButton: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var vm = ViewModel()
    
    var body: some View {
        
        Button {
            vm.authenticated.toggle()
            withAnimation() {
                if vm.authenticated == false {
                    viewRouter.currentPage = .login
                }
            }
        } label: {
            ZStack{
                Circle()
                    .foregroundColor(grayBackgroundColor)
                    .frame(width: 40, height: 40 )
                Image("arrow")
                    .resizable()
                    .frame(width: 20, height: 20)
            }
            Text("Log out")
                .foregroundColor(blackColor)
                .font(.custom(mediumFont, size: 20))
            
            Spacer()
            
            
        }
    }
}


struct LogOutButton_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButton()
            .environmentObject(ViewRouter())
    }
}
