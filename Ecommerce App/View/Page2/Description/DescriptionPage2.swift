//
//  DescriptionPage2.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 26.03.2023.
//

import SwiftUI

struct DescriptionPage2: View {
    @StateObject var viewModel = NetworkItem()
    
    var body: some View {
        if let itemModel = viewModel.data {
            HStack{
                Text(itemModel.description)
            }
            .foregroundColor(grayFontColor)
        .font(.custom(lightFont, size: 12))
        }
    }
}

struct DescriptionPage2_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionPage2()
    }
}
