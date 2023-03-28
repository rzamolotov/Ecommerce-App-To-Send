//
//  LatestImageView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import SwiftUI

struct FlashSaleItemView: View {
    
    @ObservedObject var network = Network()
    @State var favorite: Bool = false
    
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: 9) {
                ForEach(network.dataFlash) { flash in
                    NavigationLink(destination: {
                        Page2View()
                    }, label: {
                        ZStack{
                            AsyncImage(url: URL(string: flash.image_url)) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 174, height: 221)
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
                                }
                                .padding()
                                .position(x: 90, y: 20)
                                //: HStack face+sale
                                Spacer()
                                VStack(alignment: .leading) {
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
                                        
                                        Button {
                                            favorite.toggle()
                                        } label: {
                                            ZStack {
                                                Circle()
                                                    .foregroundColor(grayBackgroundColor)
                                                Image(systemName: favorite == true ? "heart.fill" : "heart")
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
                                }
                                .padding([.leading, .trailing])
                                .padding(.bottom, 7)
                            }//: VStack
                            .frame(width: 174, height: 221)
                        }//:ZStack
                    })
                }.padding(.leading, 5)
            }
        }
    }
}

struct FlashSaleItemView_Previews: PreviewProvider {
    static var previews: some View {
        FlashSaleItemView()
    }
}
