//
//  ShareButton.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 25.03.2023.
//

import SwiftUI

struct ShareButton: View {
    @State var favorite: Bool = false

    
    var body: some View {
        ZStack{
            Rectangle()
                .cornerRadius(10)
                .frame(width: 45, height: 92)
                .foregroundColor(shareButtonColor)
            VStack{
                Button {
                    favorite.toggle()
                } label: {
                    Image(systemName: favorite == true ? "heart.fill" : "heart")
                }
                Image(systemName: "minus")
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                //TODO: не забыть заменить символ share
                Button {
                    presentShareSheet(url: (URL(string: "https://hh.ru/resume/7e65eb23ff0b18736a0039ed1f386739615756") ?? URL(string:"https://hh.ru/resume/7e65eb23ff0b18736a0039ed1f386739615756"))!)
                } label: {
                    Image(systemName: "square.and.arrow.up")
                }
            }
            .foregroundColor(violetColor)
        }
    }
    
}

extension View {
    func presentShareSheet(url: URL) {
        let activityVC = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        // Get the relevant window scene
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            // Get the window from the window scene
            if let window = windowScene.windows.first {
                // Present the view controller on the root view controller of the window
                window.rootViewController?.present(activityVC, animated: true, completion: nil)
            }
        }
    } //функция поделиться
}

struct ShareButton_Previews: PreviewProvider {
    static var previews: some View {
        ShareButton()
    }
}
