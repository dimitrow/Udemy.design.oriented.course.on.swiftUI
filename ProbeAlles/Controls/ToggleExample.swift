//
//  ToggleExample.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 11.06.21.
//

import SwiftUI

struct ToggleExample: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        
        VStack {
            
            Text("Toggle").font(.title)
            
            HStack {
                
                Text("IS ACTIVE")
                    .opacity(isActive ? 1 : 0)
                
                
                Toggle(isOn: $isActive) {
                    Text("show text")
                }
                .labelsHidden()
                
            }
            
            Toggle(isOn: $isActive) {
                Text("Custom Toggle")
            }.padding()
                .toggleStyle(CustomToggleStyle())
            
        }
    }
}

struct ToggleExample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleExample()
    }
}

struct CustomToggleStyle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        return HStack {
            
            configuration.label
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle.fill")
                .font(.system(size: 40))
                .foregroundColor(configuration.isOn ? .green : .gray)
                .onTapGesture {
                    withAnimation {
                        
                        configuration.isOn.toggle()
                    }
                }
        }
    }
}
