//
//  PaymentDetailModel.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import Foundation

struct PaymentDetailModel: Identifiable {
    let id = UUID()
    let image: String
    let text: String
    let rightImage: String?
    let rightText: String?
}
