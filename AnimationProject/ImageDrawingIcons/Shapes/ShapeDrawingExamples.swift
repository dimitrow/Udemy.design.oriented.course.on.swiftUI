//
//  ShapeDrawingExamples.swift
//  DesignProject
//
//  Created by Karin Prater on 16.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct ShapeDrawingExamples: View {
    
    let gradient = LinearGradient(gradient: Gradient(colors: [Color.red, Color.green, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View {
        VStack {
        
            HStack {
                Text("stroke")
                Capsule()
                    .stroke(Color.red)
                    .frame(width: 100, height: 50)
                
                Capsule()
                    .stroke(Color.red, lineWidth: 5)
                    .frame(width: 100, height: 50)
            }
            HStack {
                Text("strokeBorder")
                Capsule()
                    .stroke(gradient, lineWidth: 5)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                
                Capsule()
                    .strokeBorder(Color.red, lineWidth: 5)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                
            }
            
            HStack {
                Text("StrokeStyle dashed")
                Capsule()
                    .stroke(Color.red,
                            style: StrokeStyle(lineWidth: 2,
                                               lineCap: .round,
                                               lineJoin: .miter,
                                               miterLimit: 1,
                                               dash: [6, 4, 1],
                                               dashPhase: 5))
                .frame(width: 100, height: 50)
                
                Capsule()
                            .stroke(Color.red,
                                    style: StrokeStyle(lineWidth: 5,
                                                       lineCap: .butt,
                                                       lineJoin: .miter,
                                                       miterLimit: 1,
                                                       dash: [8],
                                                       dashPhase: 5))
                        .frame(width: 150, height: 100)
            }
            
            HStack {
                
                Text("fill")
                
                Capsule()
                    .fill(Color.red)
                 .frame(width: 100, height: 50)
                
                Capsule()
                .fill(gradient)
                 .frame(width: 100, height: 50)
                
            }
            
            HStack {
                
                Text("path trim")
                Capsule()
                    .trim(from: 0.1, to: 0.9)
                    .stroke(Color.red)
                    .frame(width: 100, height: 50)
                
                Capsule()
                    .trim(from: 0, to: 0.5)
                    .fill(gradient)
                    .frame(width: 100, height: 50)
                
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ShapeDrawingExamples_Previews: PreviewProvider {
    static var previews: some View {
        ShapeDrawingExamples()
    }
}
