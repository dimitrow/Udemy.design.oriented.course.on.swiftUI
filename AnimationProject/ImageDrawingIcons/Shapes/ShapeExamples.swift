//
//  ShapeExamples.swift
//  DesignProject
//
//  Created by Karin Prater on 16.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct ShapeExamples: View {
    var body: some View {
        VStack {
       
            HStack {
                Text("Rectangle")
               Rectangle()
                .stroke(Color.red)
                .frame(width: 50, height: 50)
                
            }
            
            HStack {
                Text("Circle")
                Circle()
                .stroke(Color.red)
                .frame(width: 50, height: 50)
                
                Text("Ellipse")
                
                Ellipse()
                    .stroke(Color.red)
                    .frame(width: 50, height: 50)
                      
                Ellipse()
                .stroke(Color.red)
                .frame(width: 50, height: 100)
                
                Ellipse()
                .stroke(Color.red)
                .frame(width: 100, height: 50)
            }
            
            HStack {
                Text("RoundedRect")
                RoundedRectangle(cornerRadius: 10)
                .stroke(Color.red)
                .frame(width: 50, height: 50)
                
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                .stroke(Color.red)
                .frame(width: 50, height: 50)
                
                RoundedRectangle(cornerRadius: 20, style: .circular)
                    .stroke(Color.red)
                .frame(width: 100, height: 100)
                
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.red)
                .frame(width: 100, height: 100)
                
            }
            
            HStack {
                Text("Capsule")
                
                Capsule()
                    .stroke(Color.red)
                    .frame(width: 100, height: 50)
                
                Capsule()
                    .stroke(Color.red)
                    .frame(width: 50, height: 100)
                
                Capsule(style: .circular)
                .stroke(Color.red)
                .frame(width: 50, height: 100)
                
                Capsule(style: .continuous)
                .stroke(Color.red)
                .frame(width: 50, height: 100)
            }
            
         
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ShapeExamples_Previews: PreviewProvider {
    static var previews: some View {
        ShapeExamples()
    }
}
