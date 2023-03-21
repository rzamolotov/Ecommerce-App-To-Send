//
//  ViewRouter.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 21.03.2023.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject { //observable object class
    @Published var currentPage: Page = .login //this gets observed by other views
}
