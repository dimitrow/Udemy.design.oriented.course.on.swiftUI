//
//  ShadowExamples.swift
//  DesignProject
//
//  Created by Karin Prater on 08.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct ShadowExamples: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        
        VStack(spacing: 30) {
            
            Text("Hello, World!")
                .font(.largeTitle)
                .shadow(radius: 2, x: 5, y: 5)
            
            RectangleTestView()
             .shadow(color: Color.black.opacity(0.2), radius: 20, x: 10, y: 10)
            
            RectangleTestView()
                .shadow(color: Color.black.opacity(0.15), radius: 10, x: 7, y: 7)

            RectangleTestView()
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
            
           
            
            Color("Accent")
                .frame(width: 100, height: 100)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 10, y: 10)
                .shadow(color: Color(colorScheme == .dark ? "Gray1" : "Accent").opacity(0.5), radius: 20, x: 10, y: 10)
            
            // (condition) ? "true use first" : "false use second"
            
            VStack {
                Text("Hello")
                
                
            }.padding()
            .background(Color("Background2").cornerRadius(10).shadow(radius: 20))
            
           
            
            
            
        }.padding()
        .background(Color("Background3"))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ShadowExamples_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        ShadowExamples()
        ShadowExamples()
            .previewLayout(.sizeThatFits)
            .environment(\.colorScheme, .dark)
            
        }
    }
}

