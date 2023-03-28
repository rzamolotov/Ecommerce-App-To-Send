//
//  BrandsHeader.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 21.03.2023.
//

import SwiftUI

struct BrandsHeader: View {
    @ObservedObject var network = Network()
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 12) {
                ForEach(network.dataLatest) { late in
                    AsyncImage(url: URL(string: late.image_url)) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 114, height: 149)
                            .cornerRadius(10)
                    } placeholder: {
                        ProgressView()
                    }
                    
                }
                .frame(width: 114, height: 149)
            }
        }
    }
}

struct BrandsHeader_Previews: PreviewProvider {
    static var previews: some View {
        BrandsHeader()
    }
}
