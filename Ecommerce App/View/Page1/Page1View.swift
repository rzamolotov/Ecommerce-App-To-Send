//
//  Page1View.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 21.03.2023.
//

import SwiftUI

struct Page1View: View {
    
    @ObservedObject var searchVM = SearchViewModel()
    
    var body: some View {
        VStack{
            HeaderPage1View()
            ScrollView{
                SearchItem(searchText: $searchVM.searchText)
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
