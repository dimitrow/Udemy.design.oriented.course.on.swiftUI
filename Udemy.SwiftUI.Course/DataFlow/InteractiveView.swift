//
//  InteractiveView.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 25.05.21.
//

import SwiftUI

struct InteractiveView: View {
    
    @State private var selectedColor: Color = Color.yellow
    @State private var textFieldtext = ""
    
    var body: some View {
        
        VStack(spacing: 40) {
            
            Text("Selected color")
            
            selectedColor
            
            Button(action: {
                
                selectedColor = Color.orange
            }, label: {
                Text("Choose orange")
            })
            
            Button(action: {
                
                selectedColor = Color.yellow
            }, label: {
                Text("Choose yellow")
            })
            
            ColorizedButton(selectedColor: $selectedColor)
            
            TextField("Input text here", text: $textFieldtext).padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("input text is: \(textFieldtext)")
        }
    }
}

struct InteractiveView_Previews: PreviewProvider {
    static var previews: some View {
        InteractiveView()
    }
}

struct ColorizedButton: View {
    
    @Binding var selectedColor: Color
    
    var body: some View {
        
        Button(action: {
            
            selectedColor = Color.orange
        }, label: {
            Text("Choose orange")
                .padding()
                .background(Color.white)
                .cornerRadius(20)
                
                .shadow(radius: 30)
                .foregroundColor(selectedColor)
                .overlay(RoundedRectangle(cornerRadius: 20.0).stroke(selectedColor, lineWidth: 2.0))
        })
                        
    }
}
