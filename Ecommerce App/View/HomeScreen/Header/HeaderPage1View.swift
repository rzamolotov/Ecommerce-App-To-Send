//
//  HeaderPage1View.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import SwiftUI

struct HeaderPage1View: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "line.3.horizontal")
                    .foregroundColor(blackColor)
                    .font(.custom(boldFont, size: 20))
            }
            
            Spacer()
            HStack{
                Text("Trade by")
                    .foregroundColor(blackColor)
                    .font(.custom(boldFont, size: 20))
                Text("bata")
                    .foregroundColor(violetColor)
                    .font(.custom(boldFont, size: 20))
            }
            Spacer()
            VStack{
                Button {
                    
                } label: {
                    Image("avatar")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 30, height: 30)
                }
                .padding(.bottom, 2)
                Button {
                    
                } label: {
                    HStack(spacing: 2){
                        Text("Location")
                            .foregroundColor(grayFontColor)
                            .font(.custom(lightFont, size: 10))
                        Image(systemName: "chevron.down")
                            .foregroundColor(grayFontColor)
                            .font(.custom(lightFont, size: 10))
                    }
                }
            }
        }
        .padding()
    }
}

struct HeaderPage1View_Previews: PreviewProvider {
    static var previews: some View {
        HeaderPage1View()
    }
}
