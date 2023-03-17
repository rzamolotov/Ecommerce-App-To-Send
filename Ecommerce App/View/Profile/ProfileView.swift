//
//  ProfileView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import SwiftUI

struct ProfileView: View {
    
    var paymentDetailModel: PaymentDetailModel
    
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    Spacer()
                    ProfileImgeView()
                    UploadItem()
                    DetailViews()
                        .padding([.top, .leading, .trailing])
                }
                .padding(.top, 30)
                TabBarView()
            }
            .background(colorBackground)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var paymentDetailModel = PaymentDetailModel(image: "creditCard", text: "Trade store", rightImage: "chevrone", rightText: nil)
    static var previews: some View {
        ProfileView(paymentDetailModel: paymentDetailModel)
    }
}
