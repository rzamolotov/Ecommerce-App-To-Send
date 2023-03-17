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
            Button {
                
            } label: {
                Image("avatar")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
            }
            .padding(.bottom, 2)
            
            Button {
                
            } label: {
                Text("Change photo")
                    .foregroundColor(grayFontColor)
                    .font(.custom(lightFont, size: 10))
            }
            .padding(.bottom, 15)
            
            Text("Satria Adhi Pranada")
                .foregroundColor(blackColor)
                .font(.custom(boldFont, size: 20))
            
        }
    }
}

struct ProfileImgeView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImgeView()
    }
}
