//
//  CarouselSlider.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 25.03.2023.
//

import SwiftUI

struct CarouselSlider<Content: View, T: Identifiable>: View {
    var content: (T) -> Content
    var list: [T]
    // Proreties
    var spacing: CGFloat
    var trailingSpace: CGFloat
    @Binding var index: Int
    
    init(spacing: CGFloat = 15, trailingSpace: CGFloat = 100, index: Binding<Int>, items: [T], @ViewBuilder content: @escaping (T)->Content){
        self.list = items
        self.spacing = spacing
        self.trailingSpace = trailingSpace
        self._index = index
        self.content = content
    }
    
    //Offset
    @GestureState var offset: CGFloat = 0
    @State var currentIndex = 0
    
    var body: some View {
        GeometryReader { proxy in
            //setting correct width for carousel
            let width = proxy.size.width - (trailingSpace - spacing)
            let adjustMentWidth = (trailingSpace / 2) - spacing
            
            HStack(spacing: spacing) {
                ForEach(list) {item in
                    content(item)
                        .frame(width: proxy.size.width - trailingSpace)
                }
            }
            .padding(.horizontal, spacing)
            .offset(x: (CGFloat(currentIndex) * -width) + (currentIndex != 0 ? adjustMentWidth : 0) + offset)
            .gesture(
                DragGesture()
                    .updating($offset, body: { value, out, _ in
                        out = value.translation.width
                    })
                    .onEnded({ value in
                        //updating current index
                        let offsetX = value.translation.width
                        //were going to convert the transition into progress (0-1)
                        //and round the value
                        //base on the progress increasing or decreasing the current index
                        let progress = -offsetX / width
                        let roundIndex = progress.rounded()
                        //seetting max index
                        currentIndex = max(min(currentIndex + Int(roundIndex), list.count - 1), 0)
                        currentIndex = index
                    })
                    .onChanged({ value in
                        //updatingIndex
                        //updating current index
                        let offsetX = value.translation.width
                        //were going to convert the transition into progress (0-1)
                        //and round the value
                        //base on the progress increasing or decreasing the current index
                        let progress = -offsetX / width
                        let roundIndex = progress.rounded()
                        //seetting max index
                        index = max(min(currentIndex + Int(roundIndex), list.count - 1), 0)
                    })
            )
        }
       
        //animating when offset = 0
        .animation(.easeInOut, value: offset == 0)
    }
}

struct CarouselSlider_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
