//
//  LatestImageView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import SwiftUI

struct FlashSaleItemView: View {
    
    @ObservedObject var network = Network()
    
    var body: some View {
        ScrollView(.horizontal){
            if let flashSale = network.dataFlash {
                HStack(spacing: 10) {
                    ForEach(flashSale) { flash in
                        ZStack{
                            AsyncImage(url: URL(string: flash.image_url)) { image in
                                image
                                    .resizable()
                                    .frame(width: 174, height: 221)
                                    .scaledToFill()
                                    .cornerRadius(10)
                            } placeholder: {
                                ProgressView()
                            }
                            
                            VStack(alignment: .leading) {
                                HStack{
                                    Image("face")
                                    Spacer()
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 49, height: 18)
                                            .cornerRadius(15)
                                            .foregroundColor(.red)
                                        Text("\(flash.discount)% off")
                                            .font(.custom(mediumFont, size: 7))
                                            .foregroundColor(.white)
                                            .shadow(radius: 1)
                                    }
                                }//: HStack face+sale
                                Spacer()
                                ZStack{
                                    Rectangle()
                                        .frame(width: 50, height: 17)
                                        .cornerRadius(15)
                                        .foregroundColor(grayBackgroundColor)
                                        .opacity(0.6)
                                    Text(flash.category)
                                        .font(.custom(semiBoldFont, size: 9))
                                        .foregroundColor(blackColor)
                                }
                                
                                Text(flash.name)
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.white)
                                    .font(.custom(boldFont, size: 13))
                                    .padding(.bottom, 0)
                                    .shadow(radius: 1)
                                Text(flash.category)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom(boldFont, size: 13))
                                    .foregroundColor(.white)
                                    .padding(.bottom, -3)
                                    .shadow(radius: 1)
                                HStack {
                                    Text("$ \(flash.price, specifier:"%.2f")" )
                                        .foregroundColor(.white)
                                        .font(.custom(boldFont, size: 10))
                                        .shadow(radius: 1)
                                    
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
                    }
                    
                }
            }
        }
    }
}

struct FlashSaleItemView_Previews: PreviewProvider {
    static var previews: some View {
        FlashSaleItemView()
        //            .environmentObject(Network())
    }
}
