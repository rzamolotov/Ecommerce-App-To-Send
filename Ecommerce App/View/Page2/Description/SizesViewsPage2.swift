//
//  SizesViewsPage2.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 26.03.2023.
//

import SwiftUI

struct SizesViewsPage2: View {
    var body: some View {
        HStack{
            Image(systemName: "star")
                .foregroundColor(.yellow)
                .font(.custom(mediumFont, size: 16))
            Text("4.3")
                .font(.custom(boldFont, size: 14))
                .foregroundColor(blackColor)
            Text("(4000 rewiews)")
                .font(.custom(lightFont, size: 13))
                .foregroundColor(grayFontColor)
            Spacer()
        }
    }
}

struct SizesViewsPage2_Previews: PreviewProvider {
    static var previews: some View {
        SizesViewsPage2()
    }
}
