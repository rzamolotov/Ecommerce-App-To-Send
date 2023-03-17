//
//  CategoryModel.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import Foundation

struct CategoryModel: Identifiable {
    let id = UUID()
    let image: String
    let name: String
}
