//
//  CategoryItem.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 17.03.2023.
//

import SwiftUI

struct CategoryItem: View {
    
    @State private var selectedItem: String?
    
    let categories = [
    CategoryModel(image: "phones", name: "Phones"),
    CategoryModel(image: "headphones", name: "Headphones"),
    CategoryModel(image: "games", name: "Games"),
    CategoryModel(image: "car", name: "Cars"),
    CategoryModel(image: "bed", name: "Furniture"),
    CategoryModel(image: "kids", name: "Kids")
    ]
    
    var body: some View {
        HStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(categories) { category in
                        Button(action: {
                            self.selectedItem = category.name
                        } ,
                               label: {
                            VStack {
                                ZStack{
                                    Circle()
                                        .frame(width: 38)
                                    Image(category.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 30, height: 30)
                                      
                                }
                                .foregroundColor(selectedItem == category.name ? grayFontColor : categoryItemColor)
                                
                                Text(category.name)
                                    .font(.custom(lightFont, fixedSize: 8))
                                    .foregroundColor(grayFontColor)
                            }
                            .padding(.trailing,10)
                            .padding(.leading, 10)
                            
                        })
                    }
                }
            }
        }
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem()
    }
}
