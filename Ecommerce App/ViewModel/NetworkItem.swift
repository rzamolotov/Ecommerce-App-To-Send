//
//  NetworkItem.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 23.03.2023.
//

import Foundation

class NetworkItem: ObservableObject {
    
    @Published private(set) var dataPage2: Page2Model?
    @Published var isLoading = true
    
    init() {
        fetchPage2()
    }
    
    
    func fetchPage2() {
        guard let url = URL(string: "https://run.mocky.io/v3/f7f99d04-4971-45d5-92e0-70333383c239") else {
            fatalError("INVALID PAGE2 URL")
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            
            let result = try? JSONDecoder().decode(Page2Model.self, from: data)
            
            if let result = result {
                self.isLoading = false
                DispatchQueue.main.async {
                    self.dataPage2 = result
                    print(result)
                }
            }
        }.resume()
    }
}
