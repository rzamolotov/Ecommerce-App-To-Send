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
    @State private var showingAlert = false
    
    var body: some View {
        Button {
            vm.logIn()
            withAnimation() {
                if vm.authenticated {
                    viewRouter.currentPage = .landing
                } else {
                    showingAlert = true
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
        }.alert(isPresented: $showingAlert) {
            Alert(title: Text("Wrong password or username"), dismissButton: .cancel())}
    }
}


struct LoginButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonView()
    }
}
