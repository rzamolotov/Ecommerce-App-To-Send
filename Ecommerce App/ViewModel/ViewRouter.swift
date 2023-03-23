//
//  ViewRouter.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 21.03.2023.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .login //основная страница для входа в приложение
}
