//
//  LatestModel.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 20.03.2023.
//

import Foundation

struct LatestModel: Decodable {
    let latest: [Latest]
}
struct Latest: Decodable, Identifiable {
    var id = UUID()
    let category: String
    let name: String
    let price: Int
    let image_url: String
    
    enum CodingKeys: CodingKey {
        case category, name, price, image_url
    }
}
    
