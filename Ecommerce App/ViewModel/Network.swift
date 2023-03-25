//
//  Network.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 20.03.2023.
//
//

import Foundation
import SwiftUI
import Combine

class Network: ObservableObject {
    
    
    @Published var dataFlash = [FlashSale]()
    @Published var dataLatest = [Latest]()
    @Published var isLoading = true
    
    
    init() {
        self.fetchFlash()
    }
    
    func fetchFlash(){
        guard let url = URL(string: "https://run.mocky.io/v3/a9ceeb6e-416d-4352-bde6-2203416576ac") else {
            fatalError("INVALID URL")
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            
            let result = try? JSONDecoder().decode(FlashSaleModel.self, from: data)
            
            if let result = result {
                self.isLoading = false
                DispatchQueue.main.async {
                    self.dataFlash = result.flash_sale
                    self.fetchLatest()
                    print(result)
                }
            }
        }.resume()
    }
    func fetchLatest(){
        guard let url = URL(string: "https://run.mocky.io/v3/cc0071a1-f06e-48fa-9e90-b1c2a61eaca7") else {
            fatalError("INVALID URL")
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            
            let result = try? JSONDecoder().decode(LatestModel.self, from: data)
            
            if let result = result {
                self.isLoading = false
                DispatchQueue.main.async {
                    self.dataLatest = result.latest
                    print(result)
                }
            }
        }.resume()
    }
}
