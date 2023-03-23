//
//  Page2Model.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 23.03.2023.
//

import Foundation

struct Page2Model: Decodable, Identifiable {
    var id = UUID()
    let name: String
    let description: String
    let rating: Double
    let number_of_reviews: Int
    let price: String
    let colors: [String]
    let image_urls: [String]
        
    enum CodingKeys: CodingKey {
        case name, description, rating, number_of_reviews, price, colors, image_urls
    }
}
