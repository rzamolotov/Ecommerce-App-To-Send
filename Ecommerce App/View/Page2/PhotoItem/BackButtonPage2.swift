//
//  BackButtonPage2.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 25.03.2023.
//

import SwiftUI

struct BackButtonPage2: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var vm = ViewModel()
    
    var body: some View {
        
        Button {
            vm.authenticated.toggle()
            withAnimation() {
                if vm.authenticated == false {
                    viewRouter.currentPage = .landing
                }
            }
        } label: {
            Image(systemName: "chevron.left")
                .font(.body)
                .foregroundColor(blackColor)
        }
        
    }
}

struct BackButtonPage2_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonPage2()
    }
}
