//
//  UploadItem.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import SwiftUI

struct UploadItem: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 290, height: 46)
                .foregroundColor(violetColor)
                .cornerRadius(15.0)
            HStack{
                //TODO: заменить иконку
                Image(systemName: "square.and.arrow.up")
                    .foregroundColor(.white)
                    .font(.custom(boldFont, size: 14))
                    .padding(.leading, -30)
                
                Text("Upload Item")
                    .font(.custom(boldFont, size: 14))
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
}

struct UploadItem_Previews: PreviewProvider {
    static var previews: some View {
        UploadItem()
    }
}
