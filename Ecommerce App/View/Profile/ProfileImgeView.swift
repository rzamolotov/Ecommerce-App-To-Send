//
//  ProfileImgeView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import SwiftUI

struct ProfileImgeView: View {
    @State private var image = UIImage()
    @State private var showSheet = false
    
    var body: some View {
        VStack{
            Image(uiImage: self.image)
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
                .background(content: {
                    Image("avatar")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 60, height: 60)
                })
                .padding(.bottom, 2)
            
            Text("Change photo")
                .foregroundColor(grayFontColor)
                .font(.custom(lightFont, size: 10))
                .padding(.bottom, 15)
        }
        .onTapGesture {
            showSheet = true
        }
        .padding(.horizontal, 20)
        .sheet(isPresented: $showSheet) {
            // Pick an image from the photo library:
            ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
            
            //  If you wish to take a photo from camera instead:
            // ImagePicker(sourceType: .camera, selectedImage: self.$image)
        }
        
        Text("Satria Adhi Pranada")
            .foregroundColor(blackColor)
            .font(.custom(boldFont, size: 20))
    }
}


struct ProfileImgeView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImgeView()
    }
}
