//
//  NamePriceViewPage2.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 26.03.2023.
//

import SwiftUI

struct NamePriceViewPage2: View {
    var body: some View {
        HStack{
            Text("Reebok Classic")
                .font(.custom(boldFont, size: 18))
                .foregroundColor(blackColor)
            Spacer()
            Text("$ 24.00")
                .font(.custom(boldFont, size: 12))
                .foregroundColor(blackColor)
        }
    }
}

struct NamePriceViewPage2_Previews: PreviewProvider {
    static var previews: some View {
        NamePriceViewPage2()
    }
}
