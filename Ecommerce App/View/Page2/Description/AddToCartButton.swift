//
//  AddToCartButtom.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 25.03.2023.
//

import SwiftUI

struct AddToCartButton: View {
    
    @StateObject var viewModel = NetworkItem()
    @State var counter: Int = 1
    
    var body: some View {
        
        if let itemModel = viewModel.data {
            ZStack{
                Rectangle()
                    .foregroundColor(addToCartPlaceholder)
                    .cornerRadius(40)
                    .frame(height: 90)
                Rectangle()
                    .foregroundColor(addToCartPlaceholder)
                    .frame(height: 107)
                    .padding(.bottom, -120)
                HStack {
                    VStack(alignment: .leading){
                        Text("Quantity:")
                            .foregroundColor(grayFontColor)
                            .font(.custom(lightFont, size: 10))
                            .padding(.bottom, 12)
                        HStack{
                            Button {
                                if counter > 1 {
                                    counter -= 1
                                }
                            } label: {
                                ZStack{
                                    Rectangle()
                                        .frame(width: 38, height: 22)
                                        .cornerRadius(10)
                                        .foregroundColor(violetColor)
                                    Image(systemName: "minus")
                                        .foregroundColor(.white)
                                }
                            }
                            Button {
                                if counter < 10 {
                                    counter += 1
                                }
                            } label: {
                                ZStack{
                                    Rectangle()
                                        .frame(width: 38, height: 22)
                                        .cornerRadius(10)
                                        .foregroundColor(violetColor)
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                }
                            }
                            .padding(.leading, 20)
                            
                            
                            
                        }
                        
                    }//:Counter
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            Rectangle()
                                .foregroundColor(violetColor)
                                .cornerRadius(10)
                                .frame(width: 170, height: 44)
                            
                            HStack{
                                Text("$\(counter * itemModel.price).00")
                                    .foregroundColor(grayBackgroundColor)
                                    .font(.custom(lightFont, size: 10))
                                
                                Text("ADD TO CART")
                                    .foregroundColor(.white)
                                    .font(.custom(boldFont, size: 10))
                            }
                        }
                    }
                    .padding(.leading, 60)
                    
                }
            }
        }
    }
}

struct AddToCartButton_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartButton()
            .environmentObject(NetworkItem())
    }
}
