//
//  SignUpView.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 26.05.21.
//

import SwiftUI

struct SignUpView: View {
    
    @ObservedObject var accountManager = AccountManager()
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text("enterd email: \(accountManager.email)")
                    Text("enterd password: \(accountManager.password)")
                }
                Spacer()
            }
            .padding()
            
            Text("Sign Up").font(.title)
            
            TextField("email", text: $accountManager.email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("password", text: $accountManager.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("repeatPassword", text: $accountManager.repeatPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                accountManager.setUpAccount()
            }, label: {
                
                Text("Sign Up").font(.headline)
                    .frame(width: 120, height: 44)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 6)
                    .overlay(RoundedRectangle(cornerRadius: 12).stroke())
            }).disabled(!accountManager.signUpAllowed)
            
            
            Text(accountManager.errorMessage).foregroundColor(.red).padding()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
