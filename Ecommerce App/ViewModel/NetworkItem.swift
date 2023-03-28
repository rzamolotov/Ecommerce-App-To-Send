//
//  NetworkItem.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 23.03.2023.
//

import Foundation
import SwiftUI

class NetworkItem: ObservableObject {
    @Published var data: Page2Model?
    
    init() {
        self.fetchData()
    }
    
    func fetchData(){
        guard let url = URL(string: "https://run.mocky.io/v3/f7f99d04-4971-45d5-92e0-70333383c239") else {
            fatalError("INVALID URL")
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            
            let result = try? JSONDecoder().decode(Page2Model.self, from: data)
            
            if let result = result {
                DispatchQueue.main.async {
                    self.data = result
                    print(result)
                }
            }
        }.resume()
    }
}
