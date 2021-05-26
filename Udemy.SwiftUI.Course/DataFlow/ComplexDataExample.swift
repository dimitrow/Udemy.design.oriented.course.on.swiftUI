//
//  ComplexDataExample.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 26.05.21.
//

import SwiftUI

struct ComplexDataExample: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var repeatPassword: String = ""
    
    @State private var signUpAllowed: Bool = false
    
    var body: some View {
        
        VStack {
            
            Text("Sign Up").font(.title)
            
            TextField("email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("repeatPassword", text: $repeatPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                
                print("Sign up attempt")
            }, label: {
                
                Text("Sign Up").font(.headline)
                    .frame(width: 120, height: 44)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 6)
                    .overlay(RoundedRectangle(cornerRadius: 12).stroke())
            }).disabled(!signUpAllowed)
            
        }
    }
}

struct ComplexDataExample_Previews: PreviewProvider {
    static var previews: some View {
        ComplexDataExample()
    }
}
