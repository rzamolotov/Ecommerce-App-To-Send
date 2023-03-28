//
//  Ecommerce_AppApp.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 16.03.2023.
//

import SwiftUI


@main
struct Ecommerce_AppApp: App {
    @StateObject var viewRouter = ViewRouter() //changes views e.g. login to home
    
    var network = Network()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(network)
                .environmentObject(viewRouter)
        }
    }
}
