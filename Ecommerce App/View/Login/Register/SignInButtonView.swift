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
    @State private var showingAlert = false
    
    var body: some View {
        Button(action: {
            vm.registerPressed()
            if vm.authenticated == true {
                vm.sampleUsername = ""
                vm.sampleUsername = vm.username
                print("sampleusername is\(vm.sampleUsername)")
                viewRouter.currentPage = .landing
            } else {
                showingAlert = true
            }
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
        }.alert(isPresented: $showingAlert) {
            Alert(title: Text("This username already exists"), dismissButton: .cancel())}
    }
}


struct SignInButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignInButtonView()
    }
}
