//
//  LatestImageView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import SwiftUI

struct LatestImageView: View {
    var body: some View {
        ZStack{
            Image("phoneImage")
                .resizable()
                .scaledToFit()
                .frame(width: 114, height: 149)
        //TODO: Добавить Latest
            
            HStack{
                Button { } label: {
                    ZStack {
                        Circle()
                            .foregroundColor(grayBackgroundColor)
                        Image(systemName: "plus")
                    }
                    .frame(width: 20, height: 20)
                }
            }
        }
    }
}

struct LatestImageView_Previews: PreviewProvider {
    static var previews: some View {
        LatestImageView()
    }
}
