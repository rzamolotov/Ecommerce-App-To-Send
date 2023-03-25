//
//  ItemView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 25.03.2023.
//

import SwiftUI

struct ItemView: View {
    @State var currentIndex: Int = 0
    @State var images: [ImageModel] = [ ]
    var body: some View {
        VStack {
            //CarouselSlider
            CarouselSlider(spacing: 50, index: $currentIndex, items: images) { item in
                
                GeometryReader { proxy in
                    let size = proxy.size
                    Image(item.name)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size.width)
                        .cornerRadius(12)
                        
                }
            }
            .padding(.vertical, 80)
            
            HStack{
                ForEach(images) { image in
                    Image(image.name)
                        .resizable()
                        .frame(width: 80, height: 60)
//                        .scaleEffect(currentIndex == index ? 2 : 1)
//                        .animation(.easeIn(duration: 0.2), value: index)

                }
            }
        }
        .onAppear {
            for index in 1...3{
                images.append(ImageModel(name: "sneaker\(index)"))
            }
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
