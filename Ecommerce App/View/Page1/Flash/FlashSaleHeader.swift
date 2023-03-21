//
//  FlashSaleHeader.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 21.03.2023.
//

import SwiftUI

struct FlashSaleHeader: View {
    var body: some View {
        HStack {
            Text("Flash sale")
                .font(.custom(mediumFont, size: 20))
                .foregroundColor(blackColor)
            Spacer()
            NavigationLink("view all") {
                EmptyView()
            }
            .font(.custom(lightFont, size: 15))
            .foregroundColor(grayFontColor)
        }
        
    }
}

struct FlashSaleHeader_Previews: PreviewProvider {
    static var previews: some View {
        FlashSaleHeader()
    }
}
