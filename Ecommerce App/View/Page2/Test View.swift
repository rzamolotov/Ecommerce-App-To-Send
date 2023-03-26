//
//  Test View.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 26.03.2023.
//

import SwiftUI

struct Test_View: View {
    
    @StateObject var viewModel = NetworkItem()
    
    var body: some View {
          VStack {
              if let data = viewModel.data {
                  Text("Name: \(data.name)")
                  Text("Description: \(data.description)")
                  Text("Rating: \(data.rating)")
                  Text("Number of Reviews: \(data.number_of_reviews)")
//                  Text("Price: \(data.price)")
//                  Text("Colors: \(data.colors.joined(separator: ", "))")
//                  Text("Image URLs: \(data.image_urls.joined(separator: ", "))")
              } else {
//                  Text("Loading...")
              }
          }
          .onAppear {
              viewModel.fetchData()
          }
      }
  }

struct Test_View_Previews: PreviewProvider {
    static var previews: some View {
        Test_View()
    }
}
