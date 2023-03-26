//
//  Page2View.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 25.03.2023.
//

import SwiftUI

struct Page2View: View {
    var body: some View {
        VStack{
            ScrollView {
                PhotoCarousel()
                NamePriceViewPage2()
                    .padding(.top, 20)
                    .padding([.leading, .trailing])
                DescriptionPage2()
                    .padding(.top, 5)
                    .padding([.leading, .trailing])
                SizesViewsPage2()
                    .padding(.top, 5)
                    .padding([.leading, .trailing])
                ColorPickerPage2()
                    .padding(.top, 5)
                    .padding([.leading, .trailing])
                
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButtonPage2())
            AddToCartButton()
                .padding(.bottom, -20)
            TabBarView()
        }
        .background(colorBackground)
    }
}

struct Page2View_Previews: PreviewProvider {
    static var previews: some View {
        Page2View()
    }
}
