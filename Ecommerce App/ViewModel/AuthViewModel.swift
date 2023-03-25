//
//  AuthViewModel.swift
//  Ecommerce App
//
//  Created by Роман Замолотов on 21.03.2023.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @AppStorage("AUTH_KEY") var authenticated = false {
        willSet { objectWillChange.send() }
    }
    @AppStorage("USER_KEY") var username = "123" //Дефолтное имя для простого входа на время разработки
    @AppStorage("LASTNAME_KEY") var lastname = ""
    @AppStorage("EMAIL_KEY") var email = ""
    @Published var password = "123" //Дефолтный пароль для простого входа на время разработки
    @Published var invalid: Bool = false
    
    private var sampleUsername = "123" //Дефолтное имя для простого входа на время разработки
    private var samplePassword = "123" //Дефолтный пароль для простого входа на время разработки
    
    init() {
        print("currently logged on \(authenticated)") //вошел ли пользователь
        print("current user \(username)") //текущее имя пользователя
    }
    
    func toggleAuthentucation() {
        self.password = "" //сбрасываем пароль
        
        withAnimation {
            authenticated.toggle()
        }
    }
    
    func authenticate() {
        guard self.username.lowercased() == sampleUsername else {
            self.invalid = false
            return
        }
        guard self.password.lowercased() == samplePassword else {
            self.invalid = false
            return
        }
        toggleAuthentucation()
    } //проверяем если пароль и имя пользователя совпадает с заданым - переключаем аутентификацию и позволяем программе войти, сли нет - сбрасываем пароль и показываем уведомление invalid = true
    func logOut() {
        toggleAuthentucation()
    }
    
    func logPressed() {
        print("Login button pressed.")
    }
}

