//
//  TextViewSlider1.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 26.03.2023.
//

import SwiftUI

struct TextViewSlider1: View {
    @State var currentIndex = 0
    @State var images: [ImageModel] = [ ]
    @State var animation = true
    @StateObject var viewModel = NetworkItem()
    
    var body: some View {
        if let itemModel = viewModel.data {
            VStack (spacing: 5) {
                ZStack {
                    HStack {
                        ForEach(itemModel.image_urls, id: \.self) { image in
                            TestViewSlider2(index: $currentIndex, items: images) { image in
                                GeometryReader{ proxy in
                                    AsyncImage(url: URL(string: "\(image)"))
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 320)
                                        .cornerRadius(12)
                                }
                            } .onAppear {
                                for index in 1...itemModel.image_urls.count{
                                    images.append(ImageModel(name: "sneaker\(index)"))
                                }
                            }
                        }
                        ShareButton()
                            .padding(.top, 200)
                            .padding(.trailing, 30)
                    }
                }//: ZStack
                
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


struct TextViewSlider1_Previews: PreviewProvider {
    static var previews: some View {
        TextViewSlider1()
    }
}
