//
//  AccountManager.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 26.05.21.
//

import UIKit
import Combine

class AccountManager: ObservableObject {

    @Published var email: String = ""
    @Published var password: String = ""
    @Published var repeatPassword: String = ""
    
    @Published var signUpAllowed: Bool = false
    @Published var errorMessage: String = ""
    
    var subscriptions = Set<AnyCancellable>()
    
    init() {
        
        $email.sink { [self] emailValue in
            
            if emailValue.count > 4 || emailValue.count == 0 {
                
                errorMessage = ""
            } else {
                
                errorMessage = "use valid email"
            }
        }.store(in: &subscriptions)
        
        $email.combineLatest($password, $repeatPassword).map { (email, password, repeatPassword) -> Bool in
            
            if email.count > 4 && password.count > 4 && password == repeatPassword {
                
                return true
            } else {
                
                return false
            }
            
        }.assign(to: \.signUpAllowed, on: self)
        .store(in: &subscriptions)
    }
    
    func setUpAccount() {
        
        print("Sign up attempt")

    }
}
