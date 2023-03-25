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
    @State var animation = true
    
    var body: some View {
        ScrollView{
            VStack (spacing: 5) {
                ZStack {
                    HStack {
                        CarouselSlider(index: $currentIndex, items: images) { image in
                            GeometryReader{ proxy in
                                Image(image.name)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 320)
                                    .cornerRadius(12)
                            }
                        } .onAppear {
                            for index in 1...3{
                                images.append(ImageModel(name: "sneaker\(index)"))
                            }
                        }
                        ShareButton()
                            .padding(.top, 200)
                            .padding(.trailing, 30)
                    }
                }
                
                HStack(spacing: 20){
                    ForEach(images.indices, id: \.self) { index in
                        Image(images[index].name)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 67, height: 38)
                            .cornerRadius(10)
                            .scaleEffect(currentIndex == index ? 1.5 : 1)
                            .shadow(radius: currentIndex == index ? 10 : 0)
                            .animation(.easeInOut(duration: 0.4), value: animation)
                    }
                }
                .padding(.top, 90)
            }
        }
    }
}


struct PhotoCarousel_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCarousel()
    }
}
