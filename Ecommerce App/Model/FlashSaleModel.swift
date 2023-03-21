//
//  FlashSaleModel.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 20.03.2023.
//

import Foundation

struct FlashSaleModel: Decodable {
    let flash_sale: [FlashSale]
}

struct FlashSale: Decodable, Identifiable {
    var id = UUID()
    let category: String?
    let name: String?
    let price: Double?
    let discount: Int?
    let image_url: String?
    
    enum CodingKeys: CodingKey {
        case category, name, price, discount, image_url
    }
}

