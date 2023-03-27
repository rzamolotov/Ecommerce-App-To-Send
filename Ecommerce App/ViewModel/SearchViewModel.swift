//
//  SearchViewModel.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 27.03.2023.
//

import Foundation

class SearchViewModel: ObservableObject {
    
    @Published var searchText: String = ""
    func filteredProducts(
        latest: [Latest],
        searchText: String
    ) -> [Latest] {
        guard !searchText.isEmpty else { return latest }
        return latest.filter { late in
            late.name.lowercased().contains(searchText.lowercased())
        }
    }
    
}
