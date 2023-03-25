//
//  PhotoCarousel.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 23.03.2023.
//

import SwiftUI

struct PhotoCarousel: View {
    // current index
    @State var currentIndex = 0
    @State var images: [ImageModel] = [ ]
    
    var body: some View {
        
        VStack {
            CarouselSlider(index: $currentIndex, items: images) { image in
                VStack {
                    GeometryReader{ proxy in
                        Image(image.name)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: proxy.size.width, height: proxy.size.height)
                            .cornerRadius(12)
                    }
                }
            } .onAppear {
                for index in 1...3{
                    images.append(ImageModel(name: "sneaker\(index)"))
                }
            }
            HStack{
                ForEach(images.indices, id: \.self) { index in
                    Image(images[index].name)
                        .resizable()
                        .frame(width: 80, height: 60)
                        .cornerRadius(10)
                        .scaleEffect(currentIndex == index ? 1.5 : 1)
                        .shadow(radius: currentIndex == index ? 10 : 0)
                        .padding([.leading, .trailing])
                        .animation(.easeIn(duration: 0.6), value: index)
                }
            }
            
        }
    }
}


struct PhotoCarousel_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCarousel()
    }
}
