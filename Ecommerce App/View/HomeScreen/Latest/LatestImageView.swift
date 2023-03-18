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
                .scaledToFill()
            
            //TODO: Добавить Latest
            
            VStack {
                Spacer()
                HStack {
                    VStack(alignment: .leading, spacing: 3) {
                        ZStack{
                            Rectangle()
                                .frame(width: 35, height: 12)
                                .cornerRadius(15)
                                .foregroundColor(grayBackgroundColor)
                                .opacity(0.5)
                            Text("Phones")
                                .font(.custom(mediumFont, size: 5))
                        }
                        Text("Samsung")
                            .foregroundColor(.white)
                            .font(.custom(boldFont, size: 10))
                    }
                    Spacer()
                }
                .padding(.leading)
                .padding(.top)
                .padding(.bottom, -20)
                
                HStack{
                    //TODO: add if else
                    Text("console")
                        .font(.custom(boldFont, size: 10))
                        .foregroundColor(.white)
                        .padding(.leading)
                        .padding(.top, 15)
                    Spacer()
                }
                
                HStack {
                    Text("$ 180,000")
                        .foregroundColor(.white)
                        .font(.custom(boldFont, size: 10))
                        .padding(.leading)
                        .padding(.top, 15)
                    
                    Spacer()
                    
                    Button { } label: {
                        ZStack {
                            Circle()
                                .foregroundColor(grayBackgroundColor)
                            Image(systemName: "plus")
                        }
                        .frame(width: 20, height: 20)
                    }
                    .padding()
                }
                .padding(.top, -35)
            }
        }
        .frame(width: 114, height: 149)
    }
}

struct LatestImageView_Previews: PreviewProvider {
    static var previews: some View {
        LatestImageView()
    }
}
