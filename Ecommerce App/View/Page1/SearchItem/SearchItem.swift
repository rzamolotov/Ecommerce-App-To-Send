//
//  SearchItem.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 21.03.2023.
//

import SwiftUI

struct SearchItem: View {
    
    @Binding var text: String
    
    var body: some View {
        NavigationLink(destination: SearchView()) {
                TextField("What are you looking for?", text: $text)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal, 10)
                    .transition(.move(edge: .bottom))
        }
       
    }
}

struct SearchItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchItem(text: .constant(""))
    }
}
