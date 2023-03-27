//
//  SearchView.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 27.03.2023.
//

import SwiftUI

struct SearchView: View {
    @Environment(\.isSearching) private var isSearching
    
    var body: some View {
        Text(isSearching ? "Searching" : "Not searching")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
