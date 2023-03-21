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
    let objectWillChange = ObservableObjectPublisher()
    
    @Published var dataFlash = [FlashSale]()
    @Published var dataLatest = [Latest]()
    @Published var isLoading = true
    
    
    init() {
        fetchFlash()
        
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
//                    self.fetchLatest()
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

//import Foundation
//import SwiftUI
//
//
//class Network: ObservableObject {
//    @Published var latest = LatestModel.self
////    @Published var flashSales: [FlashSaleModel] = []
//
//
//    func getLatest() {
//        guard let url = URL(string: "https://run.mocky.io/v3/cc0071a1-f06e-48fa-9e90-b1c2a61eaca7") else { fatalError("Missing Latest URL") }
//
//        let urlRequest = URLRequest(url: url)
//
//        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
//            if let error = error {
//                print("Request error: ", error)
//                return
//            }
//
//            guard let response = response as? HTTPURLResponse else { return }
//
//            if response.statusCode == 200 {
//                guard let data = data else { return }
//                DispatchQueue.main.async {
//                    do {
//                        let decodedLatest = try JSONDecoder().decode(LatestModel.self, from: data)
//                        self.latest = decodedLatest.latest.self
//                    } catch let error {
//                        print("Error decoding: ", error)
//                    }
//                }
//            }
//        }
//        dataTask.resume()
//    }
//}
//
//    func getFlashSales() {
//        guard let url = URL(string: "https://run.mocky.io/v3/a9ceeb6e-416d-4352-bde6-2203416576ac") else { fatalError("Missing FlashSales URL") }
//
//        let urlRequest = URLRequest(url: url)
//
//        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
//            if let error = error {
//                print("Request error: ", error)
//                return
//            }
//
//            guard let response = response as? HTTPURLResponse else { return }
//
//            if response.statusCode == 200 {
//                guard let data = data else { return }
//                DispatchQueue.main.async {
//                    do {
//                        let decodedFlashSales = try JSONDecoder().decode([FlashSaleModel].self, from: data)
//                        self.flashSales = decodedFlashSales
//                    } catch let error {
//                        print("Error decoding: ", error)
//                    }
//                }
//            }
//        }
//
//        dataTask.resume()
//    }
//}


//class Network: ObservableObject {
//
//    @Published private(set) var latestModel: LatestModel
//    @Published private(set) var flashSaleModel: FlashSaleModel
//
//    init() {
//        Task.init{
//            await fetchLatest()
//            await fetchFlashSales()
//        }
//    }
//
//    func fetchLatest() async {
//        do {
//            guard let url = URL(string: "https://run.mocky.io/v3/cc0071a1-f06e-48fa-9e90-b1c2a61eaca7") else { fatalError("Missing URL") }
//
//            let urlRequest = URLRequest(url: url)
//
//            let (data, response) = try await URLSession.shared.data(for: urlRequest)
//
//            guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
//
//            let decoder = JSONDecoder()
//            decoder.keyDecodingStrategy = .convertFromSnakeCase
//            let decodedData = try decoder.decode(LatestModel.self, from: data)
//
//            DispatchQueue.main.async {
//                self.latestModel = decodedData
//            }
//
//        } catch {
//            print("Error fetching data from Pexels: \(error)")
//        }
//    }
//
//    func fetchFlashSales() async {
//        do {
//            guard let url = URL(string: "https://run.mocky.io/v3/a9ceeb6e-416d-4352-bde6-2203416576ac") else { fatalError("Missing URL") }
//            let urlRequest = URLRequest(url: url)
//
//            let (data, response) = try await URLSession.shared.data(for: urlRequest)
//
//            guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetchig data")}
//
//            let decoder = JSONDecoder()
//            decoder.keyDecodingStrategy = .convertFromSnakeCase
//            let decodedData = try decoder.decode(FlashSaleModel.self, from: data)
//
//            DispatchQueue.main.async {
//                self.flashSaleModel = decodedData
//            }
//
//        } catch {
//            print("Error fetching data from Pexels: \(error)")
//        }
//    }
//}
