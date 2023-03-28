//
//  arousel1.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 28.03.2023.
//

import SwiftUI

struct GalleryView: View {
    @ObservedObject var network = NetworkItem()
    @State private var selectedImageIndex = 0
    @State private var isZoomed = false
    
    var body: some View {
        VStack {
            if let images = network.data?.image_urls, !images.isEmpty {
               
                    ZStack{
                        AsyncImage(url: URL(string: images[selectedImageIndex])) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width / 1.1, height: 360)
                                .cornerRadius(10)
                                .gesture(
                                    DragGesture()
                                        .onEnded { value in
                                            let swipe = UIScreen.main.bounds.width / 2
                                            withAnimation{
                                                if value.translation.width < -swipe && selectedImageIndex < images.count - 1 {
                                                    selectedImageIndex += 1
                                                } else if value.translation.width > swipe && selectedImageIndex > 0 {
                                                    selectedImageIndex -= 1
                                                }
                                            }
                                        }
                                )
                        } placeholder: {
                            ProgressView()
                        }
                        HStack{
                            Spacer()
                            ShareButton()
                                .padding(.trailing, 30)
                        }
                    }
                
                ScrollView(.horizontal, showsIndicators: false) {
                   
                        HStack(spacing: 20) {
                            ForEach(images.indices, id: \.self) { index in
                                AsyncImage(url: URL(string: images[index])) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 67, height: 38)
                                        .cornerRadius(10)
                                        .shadow(radius: index == selectedImageIndex ? 3 : 0)
                                        .scaleEffect(index == selectedImageIndex ? 1.5 : 1.0)
                                    
                                        .onTapGesture {
                                            withAnimation {
                                                selectedImageIndex = index
                                                isZoomed = true
                                            }
                                        }
                                } placeholder: {
                                    ProgressView()
                                }
                            }
                        }
                        .padding()
                    }
                
            } else {
                ProgressView()
            }
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
