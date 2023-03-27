//
//  SearchItem.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 21.03.2023.
//

import SwiftUI

struct SearchItem: View {
    
    @Binding var searchText: String
    @ObservedObject var searchVM = SearchViewModel()
    @State private var filteredData: [String] = []

    
    var body: some View {
        TextField("What are you looking for?", text: $searchText)
            .padding(7)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .transition(.move(edge: .bottom))
            .onTapGesture {
                
            }
            .overlay {
                HStack{
                    Spacer()
                    Image(systemName: "x.circle.fill")
                        .foregroundColor(grayFontColor)
                        .padding()
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            UIApplication.shared.hideKeyboard()
                            searchText = ""
                        }
                }
            }
        
    }
}

extension UIApplication {
    func hideKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct SearchItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchItem(searchText: .constant(""))
    }
}
