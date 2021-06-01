//
//  ButtonExamples.swift
//  DesignProject
//
//  Created by Karin Prater on 14.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct ButtonExamples: View {
    var body: some View {
        VStack(spacing: 20) {
            Button(action: {
                print("pressed")
            }) {
                HStack {
                Text("Button press")
                    Text("here")
                }
            }//.disabled(true)
            
            Button(action: {
                
            }) {
                Text("plain button style")
            }.buttonStyle(PlainButtonStyle())
            
            Button(action: {
                
            }) {
                Text("borderless button style")
            }.buttonStyle(BorderlessButtonStyle())
            
           Button(action: {
                        
                    }) {
                        Text("simple button style")
                    }.buttonStyle(SimpleButtonStyle(isDisabled: false))
                    
                    Button(action: {
                        
                    }) {
                        Text("simple button style - disabled")
                    }.buttonStyle(SimpleButtonStyle(isDisabled: true))
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ButtonExamples_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExamples()
            
    }
}



struct SimpleButtonStyle: ButtonStyle {
    
    let isDisabled: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .modifier(BodyText())
            .foregroundColor(Color.white)
            .padding()
            .background(accentGradient.cornerRadius(10).modifier(EShadow(elevation: configuration.isPressed ? .low : .high)))
            .saturation(isDisabled ? 0 : 1)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}

struct AdvancedButtonStyle: PrimitiveButtonStyle {
    
    let color: Color
    let isDisabled: Bool
    
    init(color: Color = Color("Primary"), isDisabled: Bool = false) {
        self.color = color
        self.isDisabled = isDisabled
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .modifier(BodyText())
            .foregroundColor(isDisabled ? Color("Gray2") : color)
            .padding()
            .background(Color("Background3").cornerRadius(10).modifier(EShadow(elevation: .middle)))
            .onTapGesture {
                //print("tapped advanced")
                if !self.isDisabled {
                    configuration.trigger()
                }
        }
    }
}
