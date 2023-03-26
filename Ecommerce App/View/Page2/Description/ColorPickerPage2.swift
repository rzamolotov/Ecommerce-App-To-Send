//
//  ColorPickerPage2.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 26.03.2023.
//

import SwiftUI

struct ColorPickerPage2: View {
    
    @StateObject var viewModel = NetworkItem()
    
    var body: some View {
        if let itemModel = viewModel.data {
            HStack {
                VStack(alignment: .leading) {
                    Text("Color:")
                        .foregroundColor(grayFontColor)
                        .font(.custom(lightFont, size: 14))
                    HStack{
                        ForEach(itemModel.colors, id: \.self) { itemcolor in
                            Button {
                                //TODO: Create toggle
                            } label: {
                                ZStack{
                                    Rectangle()
                                        .frame(width: 32, height: 24)
                                        .cornerRadius(10)
                                        .foregroundColor(Color(hex: itemcolor))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(grayFontColor, lineWidth: 1)
                                        )
                                        .foregroundColor(violetColor)
                                }
                            }
                        }
                    }
                }
                Spacer()
            }
        }
    }
}
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

struct ColorPickerPage2_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerPage2()
    }
}
