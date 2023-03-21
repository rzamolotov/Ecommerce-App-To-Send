//
//  ProfileView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import SwiftUI

struct ProfileView: View {

    var body: some View {
            VStack{
                ScrollView{
                    Spacer()
                    ProfileImgeView()
                    UploadItem()
                    DetailViews()
                        .padding([.top, .leading, .trailing])
                    LogOutButton()
                        .padding([.leading, .trailing])
                }
                .padding(.top, 30)
                TabBarView()
            }
            .background(colorBackground)
        .navigationBarBackButtonHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
