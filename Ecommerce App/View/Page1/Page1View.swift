//
//  Page1View.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 21.03.2023.
//

import SwiftUI

struct Page1View: View {
    
    @ObservedObject var networkVM = Network()
    
    var body: some View {
        VStack {
            HeaderPage1View()
            ScrollView {
                SearchItem(searchText: $networkVM.searchQuery)
                List(networkVM.filterLatest(), id: \.id) { latest in
                    NavigationLink(destination: Page2View()) {
                        ZStack{
                            AsyncImage(url: URL(string: latest.image_url)) { image in
                                image.resizable()
                                    .frame(width: 114, height: 149)
                                    .scaledToFill()
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(10)
                            } placeholder: {
                                ProgressView()
                            }
                            VStack(alignment: .leading, spacing: 3) {
                                VStack(alignment: .leading){
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 35, height: 12)
                                            .cornerRadius(15)
                                            .foregroundColor(grayBackgroundColor)
                                            .opacity(0.5)
                                        Text(latest.category)
                                            .font(.custom(mediumFont, size: 5))
                                            .foregroundColor(blackColor)
                                    }
                                    Text(latest.name)
                                        .foregroundColor(.white)
                                        .font(.custom(boldFont, size: 10))
                                    
                                    HStack{
                                        Text("$ \(latest.price)")
                                            .foregroundColor(.white)
                                            .font(.custom(boldFont, size: 8))
                                        
                                        Spacer()
                                        Button { } label: {
                                            ZStack {
                                                Circle()
                                                    .foregroundColor(grayBackgroundColor)
                                                Image(systemName: "plus")
                                                    .font(.subheadline)
                                                    .foregroundColor(violetColor)
                                            }
                                            .frame(width: 20, height: 20)
                                            
                                        }
                                    }
                                }
                                .position(x: 45, y: 110)
                                .padding(.leading)
                                
                            }
                        }.frame(width: 114, height: 149)
                    }//: NavigationLink
                }
                CategoryItem()
                LatestHeaderView()
                LatestItemView()
                FlashSaleHeader()
                FlashSaleItemView()
                BrandsView()
                BrandsHeader()
            }
            TabBarView()
        }
        .padding([.leading, .trailing])
        .background(colorBackground)
        .navigationBarBackButtonHidden(true)
    }
}


struct Page1View_Previews: PreviewProvider {
    static var previews: some View {
        Page1View()
    }
}
