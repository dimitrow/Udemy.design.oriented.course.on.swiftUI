//
//  ButtonExample.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 22.05.21.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        
        VStack {
            
            Button(action: {
                print("pressed")
            }, label: {
                Text("Custom Button")
            }).buttonStyle(CustomButtonStyle())
        }
    }
}

struct ButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExample()
    }
}

struct CustomButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        return configuration
            .label
            .font(.title)
            .foregroundColor(Color(configuration.isPressed ? "AccentColor" : "PrimaryLightColor"))
            .padding()
            .background(primaryLinearGradient
                            .cornerRadius(18.0)
                            .modifier(CustomShadowModifier(elevation: configuration.isPressed ? .low : .high)))
        
    }
}
