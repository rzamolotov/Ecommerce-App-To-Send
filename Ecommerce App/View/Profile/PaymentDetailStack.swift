//
//  PaymentDetailStack.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import SwiftUI

struct PaymentDetailStack: View {
    
    var paymentDetailModel: PaymentDetailModel
    
    var body: some View {
        VStack {
            HStack {
                NavigationLink {
                    EmptyView()
                } label: {
                    ZStack{
                        Circle()
                            .foregroundColor(grayBackgroundColor)
                            .frame(width: 40, height: 40 )
                        Image(paymentDetailModel.image)
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    Text(paymentDetailModel.text)
                        .foregroundColor(blackColor)
                        .font(.custom(mediumFont, size: 20))
                    
                    Spacer()
                    
                    if paymentDetailModel.rightText == nil {
                        Image(paymentDetailModel.rightImage ?? "")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(blackColor)
                            .font(.custom(extraBoldFont, size: 20))
                    } else if paymentDetailModel.rightImage == nil {
                        Text(paymentDetailModel.rightText ?? "")
                            .foregroundColor(blackColor)
                            .font(.custom(mediumFont, size: 20))
                    } else {
                        Text("")
                    }
                }
            }
        }
    }
}


struct PaymentDetailStack_Previews: PreviewProvider {
    static var paymentDetailModel = PaymentDetailModel(image: "creditCard", text: "Trade store", rightImage: "chevrone", rightText: nil)
    static var previews: some View {
        PaymentDetailStack(paymentDetailModel: paymentDetailModel)
    }
}
