//
//  NetworkItem.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 23.03.2023.
//

import Foundation
import SwiftUI

class NetworkItem: ObservableObject {
    
    @Published var page2Model: Page2Model?
    
    func loadData() {
        guard let url = URL(string: "https://run.mocky.io/v3/f7f99d04-4971-45d5-92e0-70333383c239") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode(Page2Model.self, from: data)
                DispatchQueue.main.async {
                    self.page2Model = decodedData
                }
            } catch {
                print(error)
            }
        }.resume()
    }
}
