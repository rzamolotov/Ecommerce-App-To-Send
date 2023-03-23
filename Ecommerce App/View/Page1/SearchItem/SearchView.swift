//
//  SearchView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 22.03.2023.
//

import SwiftUI

struct SearchView: View {
    
    @State var text: String = ""
    @State private var isEditing = false
    @FocusState var isFocused: Bool
    
    var body: some View {
        List {
            TextField("Searching for \(text)", text: $text)
        }
        .searchable(text: $text, prompt: "What are you looking for?")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
