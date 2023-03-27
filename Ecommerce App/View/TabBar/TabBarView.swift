//
//  TabBarView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import SwiftUI

struct TabBarView: View {
    
    //MARK: - Property

    
    
    //MARK: - Body
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 87)
                .cornerRadius(15)
                .foregroundColor(.white)
            HStack{
                NavigationLink {
                    Page1View()
                } label: {
                    Image("home")
                        .resizable()
                        .frame(width: 17, height: 17)
                        .padding(.leading, 45)
                        .padding(.trailing, 45)
                }
                Image("heart")
                    .resizable()
                    .frame(width: 17, height: 17)
                    .padding(.trailing, 45)
                Image("cart")
                    .resizable()
                    .frame(width: 17, height: 17)
                    .padding(.trailing, 45)
                Image("message")
                    .resizable()
                    .frame(width: 17, height: 17)
                    .padding(.trailing, 45)
                NavigationLink {
                    ProfileView()
                } label: {
                    Image("person")
                        .resizable()
                        .frame(width: 17, height: 17)
                        .padding(.trailing, 45)
                }
            }
        }
    }
}


struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
