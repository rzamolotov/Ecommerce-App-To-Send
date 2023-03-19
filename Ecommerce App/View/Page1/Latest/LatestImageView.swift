//
//  LatestImageView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import SwiftUI

struct LatestImageView: View {
    var body: some View {
        Button {
            
        } label: {
            ZStack{
                Image("sneakers")
                    .resizable()
                    .scaledToFill()
                
                VStack(alignment: .leading) {
                    HStack{
                        Image("face")
                        Spacer()
                        ZStack{
                            Rectangle()
                                .frame(width: 49, height: 18)
                                .cornerRadius(15)
                                .foregroundColor(.red)
                            Text("30% off")
                                .font(.custom(mediumFont, size: 7))
                                .foregroundColor(.white)
                        }
                    }//: HStack face+sale
                    Spacer()
                    ZStack{
                        Rectangle()
                            .frame(width: 50, height: 17)
                            .cornerRadius(15)
                            .foregroundColor(grayBackgroundColor)
                            .opacity(0.6)
                        Text("kids")
                            .font(.custom(semiBoldFont, size: 9))
                            .foregroundColor(blackColor)
                    }
                    
                    Text("New ballance")
                        .foregroundColor(.white)
                        .font(.custom(boldFont, size: 13))
                        .padding(.bottom, 0)
                    Text("Sneakers")
                        .font(.custom(boldFont, size: 13))
                        .foregroundColor(.white)
                        .padding(.bottom, -3)
                    HStack {
                        Text("$ 33,00")
                            .foregroundColor(.white)
                            .font(.custom(boldFont, size: 10))
                        
                        Spacer()
                        
                        Button { } label: {
                            ZStack {
                                Circle()
                                    .foregroundColor(grayBackgroundColor)
                                Image("heart1")
                            }
                            .frame(width: 28, height: 28)
                        }
                        
                        Button { } label: {
                            ZStack {
                                Circle()
                                    .foregroundColor(grayBackgroundColor)
                                Image(systemName: "plus")
                            }
                            .frame(width: 35, height: 35)
                        }
                    }//: HStack price/plus/heart
                }//: VStack
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .padding(.bottom, 5)
                .padding(.top, 8)
            }//:ZStack
            .frame(width: 174, height: 221)
        }//:Button label
    }
}

struct LatestImageView_Previews: PreviewProvider {
    static var previews: some View {
        LatestImageView()
    }
}
