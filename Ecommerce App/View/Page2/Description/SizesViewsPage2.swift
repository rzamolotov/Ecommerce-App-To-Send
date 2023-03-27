//
//  SizesViewsPage2.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 26.03.2023.
//

import SwiftUI

struct SizesViewsPage2: View {
    @StateObject var viewModel = NetworkItem()
    var body: some View {
        if let itemModel = viewModel.data {
            HStack{
                Image(systemName: "star")
                    .foregroundColor(.yellow)
                    .font(.custom(mediumFont, size: 16))
                Text("\(itemModel.rating, specifier: "%.2f")")
                    .font(.custom(boldFont, size: 14))
                    .foregroundColor(blackColor)
                Text("(\(itemModel.number_of_reviews) reviews)")
                    .font(.custom(lightFont, size: 13))
                    .foregroundColor(grayFontColor)
                Spacer()
            }
        }
    }
}

struct SizesViewsPage2_Previews: PreviewProvider {
    static var previews: some View {
        SizesViewsPage2()
            .environmentObject(NetworkItem())
    }
}
