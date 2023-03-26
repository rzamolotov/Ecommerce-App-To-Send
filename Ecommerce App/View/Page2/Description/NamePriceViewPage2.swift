//
//  NamePriceViewPage2.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 26.03.2023.
//

import SwiftUI

struct NamePriceViewPage2: View {
    @StateObject var viewModel = NetworkItem()
    var body: some View {
        
        if let itemModel = viewModel.data {
            HStack{
                Text("\(itemModel.name)")
                    .font(.custom(boldFont, size: 18))
                    .foregroundColor(blackColor)
                Spacer()
                Text("$ \(itemModel.price).00")
                    .font(.custom(boldFont, size: 12))
                    .foregroundColor(blackColor)
            }
        }
    }
}


struct NamePriceViewPage2_Previews: PreviewProvider {
    static var previews: some View {
        NamePriceViewPage2()
    }
}
