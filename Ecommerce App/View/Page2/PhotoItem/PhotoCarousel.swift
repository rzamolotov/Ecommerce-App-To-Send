//
//  PhotoCarousel.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 23.03.2023.
//

import SwiftUI

struct PhotoCarousel: View {
    
    @State var images = ["sneaker1", "sneaker2", "sneaker3"]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { item in
                VStack{
                    Image(item)
                        .resizable()
                        .frame(width: 328, height: 279)
                        .scaledToFit()
                    
                    Image(item)
                        .resizable()
                        .frame(width: 66, height: 38)
                        
                }
            }
        }.tabViewStyle(.page)
    }
}


struct PhotoCarousel_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCarousel()
    }
}
