//
//  NetworkItem.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 23.03.2023.
//

import Foundation
import SwiftUI

//class NetworkItem: ObservableObject {
//
//    @Published var page2Model: Page2Model?
//
//    func loadData() {
//        guard let url = URL(string: "https://run.mocky.io/v3/f7f99d04-4971-45d5-92e0-70333383c239") else {
//            return
//        }
//
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            guard let data = data else {
//                return
//            }
//
//            do {
//                let decodedData = try JSONDecoder().decode(Page2Model.self, from: data)
//                DispatchQueue.main.async {
//                    self.page2Model = decodedData
//                }
//            } catch {
//                print(error)
//            }
//        }.resume()
//    }
//}
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
    
//
//        func fetchData() {
//            guard let url = URL(string: "https://run.mocky.io/v3/f7f99d04-4971-45d5-92e0-70333383c239") else {
//                return
//            }
//
//            let request = URLRequest(url: url)
//            URLSession.shared.dataTask(with: request) { data, response, error in
//                guard let data = data else {
//                    return
//                }
//
//                do {
//                    let decoder = JSONDecoder()
//                    decoder.keyDecodingStrategy = .convertFromSnakeCase
//                    let result = try decoder.decode(Page2Model.self, from: data)
//                    DispatchQueue.main.async {
//                        self.data = result
//                    }
//                } catch let error {
//                    print("Error decoding data: \(error.localizedDescription)")
//                }
//            }.resume()
//        }
//    }
//
//
