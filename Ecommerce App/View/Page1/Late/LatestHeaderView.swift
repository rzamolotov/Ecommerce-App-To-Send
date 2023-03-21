//
//  LatestHeaderView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 21.03.2023.
//

import SwiftUI

struct LatestHeaderView: View {
    var body: some View {
        HStack {
            Text("Latest")
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

struct LatestHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        LatestHeaderView()
    }
}
