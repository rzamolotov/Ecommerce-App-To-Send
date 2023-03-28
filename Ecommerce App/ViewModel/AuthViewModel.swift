//
//  AuthViewModel.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 21.03.2023.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @AppStorage("AUTH_KEY") var authenticated = false
    @AppStorage("USER_KEY") var username: String = ""
    @AppStorage("LASTNAME_KEY") var lastname: String = ""
    @AppStorage("EMAIL_KEY") var email = ""
    @AppStorage("PASSWORD") var password = "123" //Дефолтный пароль для простого входа на время разработки
    @Published var invalid: Bool = false
    
    @AppStorage("SAMPLE_USERNAME") var sampleUsername = "" //Дефолтное имя для простого входа на время разработки
    @Published var samplePassword = "123" //Дефолтный пароль для простого входа на время разработки
    
    init() {
        print("currently logged on \(authenticated)") //вошел ли пользователь
        print("current user \(username)") //текущее имя пользователя
    }
    
    func toggleAuthentucation() {
        withAnimation {
            authenticated.toggle()
        }
    }
    
    func registerPressed() {
        if username == sampleUsername {
            authenticated = false
        } else {
            toggleAuthentucation()
        }
    }
    
    func logIn() {
        if self.username.lowercased() == sampleUsername && self.password.lowercased() == samplePassword {
            toggleAuthentucation()
        } else {
            self.invalid = true
            return
        }
    } //проверяем если пароль и имя пользователя совпадает с заданым - переключаем аутентификацию и позволяем программе войти, сли нет - сбрасываем пароль и показываем уведомление invalid = true
    func logOut() {
        toggleAuthentucation()
    }
}

