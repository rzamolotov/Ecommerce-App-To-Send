//
//  PhotoItem.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 23.03.2023.
//

import SwiftUI

struct PhotoItem: View {
    @ObservedObject var networkItem = NetworkItem()
    
    var body: some View {
        AsyncImage(url: networkItem.dataPage2?.image_urls[0]) { image in
            image
        }
    }
}

struct PhotoItem_Previews: PreviewProvider {
    static var previews: some View {
        PhotoItem()
    }
}
