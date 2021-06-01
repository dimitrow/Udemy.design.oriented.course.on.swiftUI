//
//  ShapeModifierExamples.swift
//  DesignProject
//
//  Created by Karin Prater on 16.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct ShapeModifierExamples: View {
    var body: some View {
        
        VStack(spacing: 40) {
            HStack {
                Text("size")
                
                Rectangle()
                    .stroke(Color.green)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                
                Rectangle()
                    .size(width: 80, height: 20)
                    .stroke(Color.green)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                
            }
            
            HStack {
                Text("inset")
                Rectangle()
                    .inset(by: 10)
                    .stroke(Color.green)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                Rectangle()
                    .inset(by: 20)
                    .stroke(Color.green)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                
            }
            
            HStack {
                Text("rotate")
                RotatedShape(shape: Rectangle(), angle: Angle(degrees: 10))
                .stroke(Color.green)
                .frame(width: 100, height: 50)
                .border(Color.gray)
                
                
                Rectangle()
                    .stroke(Color.blue)
                    .frame(width: 100, height: 50)
                    .rotationEffect(Angle(degrees: 10))
                    .border(Color.gray)
                    
                Text("rotated")
                .rotationEffect(Angle(degrees: 10))
            }
            
            HStack {
                Text("offset")
                
                OffsetShape(shape: Rectangle(), offset: CGSize(width: 10, height: 20))
                    .stroke(Color.green, lineWidth: 2)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                
                Rectangle()
                    .stroke(Color.green, lineWidth: 2)
                    .frame(width: 100, height: 50)
                    .offset(x: 10, y: 20)
                    .border(Color.gray)
                    
            }
            
            HStack {
                Text("scale")
                
                ScaledShape(shape: Rectangle(), scale: CGSize(width: 0.5, height: 0.8))
                .stroke(Color.green, lineWidth: 2)
                .frame(width: 100, height: 50)
                    .border(Color.gray)
                
                Rectangle()
                .stroke(Color.green, lineWidth: 2)
                .frame(width: 100, height: 50)
                    .scaleEffect(x: 0.5, y: 0.8, anchor: .topLeading)
                
                
                
            }
            
            
            HStack {
                Text("transform")
                
                TransformedShape(shape: Rectangle(), transform: CGAffineTransform(a: 1, b: 0, c: 0, d: 1, tx: 0, ty: 0))
                .stroke(Color.green, lineWidth: 2)
                .frame(width: 100, height: 50)
                
                TransformedShape(shape: Rectangle(), transform: CGAffineTransform(a: 0.5, b: 0, c: 0, d: 1, tx: 0, ty: 0))
                             .stroke(Color.green, lineWidth: 2)
                             .frame(width: 100, height: 50)
                
                TransformedShape(shape: Rectangle(), transform: CGAffineTransform(a: 1, b: 0, c: 0, d: 1, tx: -10, ty: 0))
                             .stroke(Color.green, lineWidth: 2)
                             .frame(width: 100, height: 50)
                    .border(Color.gray)
                
                TransformedShape(shape: Rectangle(), transform: CGAffineTransform(a: 1, b: 0.3, c: 0, d: 1, tx: 0, ty: 0))
                             .stroke(Color.green, lineWidth: 2)
                             .frame(width: 100, height: 50)
                
                Rectangle()
                    .stroke(Color.green, lineWidth: 2)
                    .frame(width: 100, height: 50)
                    .transformEffect(CGAffineTransform(rotationAngle: CGFloat.pi / 2))
            }
            
            
            HStack {
                
                Rectangle()
                    .stroke(Color.green, lineWidth: 2)
                    .offset(x: 30, y: 0)
                    .scaleEffect(0.5)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                
                Rectangle()
                    .stroke(Color.green, lineWidth: 2)
                    .scaleEffect(0.5)
                    .offset(x: 30, y: 0)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ShapeModifierExamples_Previews: PreviewProvider {
    static var previews: some View {
        ShapeModifierExamples()
    }
}
