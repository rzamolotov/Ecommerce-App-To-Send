//
//  DescriptionPage2.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 26.03.2023.
//

import SwiftUI

struct DescriptionPage2: View {
    var body: some View {
        HStack{
            Text("Shoes inspired by 80s running shoes are still relevant today")
        }
        .foregroundColor(grayFontColor)
        .font(.custom(lightFont, size: 12))
    }
}

struct DescriptionPage2_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionPage2()
    }
}
