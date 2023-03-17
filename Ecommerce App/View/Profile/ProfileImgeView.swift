//
//  ProfileImgeView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import SwiftUI

struct ProfileImgeView: View {
    
    var body: some View {
        VStack{
            Image("avatar")
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
         

            
            Button {
                
            } label: {
                Text("Change photo")
            }
            Text("Satria Adhi Pranada")
            
        }
    }
}

struct ProfileImgeView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImgeView()
    }
}
