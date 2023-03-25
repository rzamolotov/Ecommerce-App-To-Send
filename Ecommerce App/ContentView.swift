//
//  ContentView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 16.03.2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @State var vm = ViewModel()
    
    var body: some View {
        NavigationView{
            if vm.authenticated == true {
                Page1View()
            } else {
                switch viewRouter.currentPage {
                case .login:
                    RegisterView()
                case .landing:
                    Page1View()
                        .transition(.move(edge: .trailing))
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewRouter())
    }
}
