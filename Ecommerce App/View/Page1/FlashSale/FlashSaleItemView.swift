//
//  FlashSaleItemView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 18.03.2023.
//

import SwiftUI

struct FlashSaleItemView: View {
    var body: some View {
        Button {
            
        } label: {
            ZStack{
                Image("phoneImage")
                    .resizable()
                    .scaledToFill()
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
                            .font(.custom(boldFont, size: 9))
                            .foregroundColor(.white)
                            .padding(.leading)
                            .padding(.top, 15)
                        Spacer()
                    }
                    
                    HStack {
                        Text("$ 180,000")
                            .foregroundColor(.white)
                            .font(.custom(boldFont, size: 8))
                            .padding(.leading)
                            .padding(.top, 15)
                        
                        Spacer()
                        
                        Button { } label: {
                            ZStack {
                                Circle()
                                    .foregroundColor(grayBackgroundColor)
                                Image(systemName: "plus")
                            }
                            .frame(width: 35, height: 35)
                        }
                        .padding()
                    }
                    .padding(.top, -35)
                }
            }
            .frame(width: 121, height: 174)
        }
    }
}

struct FlashSaleItemView_Previews: PreviewProvider {
    static var previews: some View {
        FlashSaleItemView()
    }
}
