////
////  DetailViews.swift
////  Ecommerce App
////
////  Created by Роман Замолотов on 17.03.2023.
////

import SwiftUI

struct DetailViews: View {
    
    let paymentDitail = [
        PaymentDetailModel(image: "creditCard", text: "Trade store", rightImage: "chevrone", rightText: nil),
        PaymentDetailModel(image: "creditCard", text: "Payment method", rightImage: "chevrone", rightText: nil),
        PaymentDetailModel(image: "creditCard", text: "Balance", rightImage: nil, rightText: "$ 1593"),
        PaymentDetailModel(image: "creditCard", text: "Trade history", rightImage: "chevrone", rightText: nil),
        PaymentDetailModel(image: "restore", text: "Restore purchase", rightImage: nil, rightText: nil),
        PaymentDetailModel(image: "questionMark", text: "Help", rightImage: nil, rightText: nil)
//        PaymentDetailModel(image: "arrow", text: "Log out", rightImage: nil, rightText: nil)
    ]
    
    var body: some View {
        VStack{
            ForEach(paymentDitail) { item in
                PaymentDetailStack(paymentDetailModel: item)
            }
        }
    }
}

struct DetailViews_Previews: PreviewProvider {
    
    static var previews: some View {
        DetailViews()
    }
}
