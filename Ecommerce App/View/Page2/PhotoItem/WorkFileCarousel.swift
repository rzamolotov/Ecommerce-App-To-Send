//
//  WorkFileCarousel.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 24.03.2023.
//

import SwiftUI
import SwiftUI

struct Item: Identifiable {
    var id: Int
    var title: String
    var color: Color
    var images: String
}

class Store: ObservableObject {
    @Published var items: [Item]
    
    let images = ["sneaker1", "sneaker2", "sneaker3"]
    let colors: [Color] = [.red, .orange, .blue, .teal, .mint, .green, .gray, .indigo, .black]
    
    // dummy data
    init() {
        items = []
        for i in 0...2 {
            let new = Item(id: i, title: "Item \(i)", color: colors[i], images: "\(i)")
            items.append(new)
        }
    }
}

struct WorkFileCarousel: View {
    
    @StateObject var store = Store()
    @State private var snappedItem = 0.0
    @State private var draggingItem = 0.0
    @State var activeIndex: Int = 0
    
    var body: some View {
        
        ZStack {
            
            ForEach(store.items) { item in
                
                // article view
                ZStack {
                    Image(item.images)
               
                }
                .frame(width: 85, height: 65)
                .scaleEffect(1.0 - abs(distance(item.id)) * 0.1)
                .opacity(1.0 - abs(distance(item.id)) * 0.3 )
                .offset(x: myXOffset(item.id), y: 1)
                .zIndex(1.0 - abs(distance(item.id)) * 0.5)
                .padding([.leading, .trailing])
                
                // Here is the modifier - on the item, not on the ForEach
                .onTapGesture {
                    // withAnimation is necessary
                    withAnimation {
                        draggingItem = Double(item.id)
                    }
                }
            }
        }
        .gesture(getDragGesture())
        .onTapGesture {
            //move card to centre
        }
    }
    
    private func getDragGesture() -> some Gesture {
        
        DragGesture()
            .onChanged { value in
                draggingItem = snappedItem + value.translation.width / 100
            }
            .onEnded { value in
                withAnimation {
                    draggingItem = snappedItem + value.predictedEndTranslation.width / 100
                    draggingItem = round(draggingItem).remainder(dividingBy: Double(store.items.count))
                    snappedItem = draggingItem
                    
                    //Get the active Item index
                    self.activeIndex = store.items.count + Int(draggingItem)
                    if self.activeIndex > store.items.count || Int(draggingItem) >= 0 {
                        self.activeIndex = Int(draggingItem)
                    }
                }
            }
    }
    
    func distance(_ item: Int) -> Double {
        return (draggingItem - Double(item)).remainder(dividingBy: Double(store.items.count))
    }
    
    func myXOffset(_ item: Int) -> Double {
        let angle = Double.pi * 2 / Double(store.items.count) * distance(item)
        return sin(angle) * 200
    }
}

struct WorkFileCarousel_Previews: PreviewProvider {
    static var previews: some View {
        WorkFileCarousel()
    }
}
