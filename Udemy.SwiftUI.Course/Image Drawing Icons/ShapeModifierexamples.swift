//
//  ShapeModifierexamples.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 24.05.21.
//

import SwiftUI

struct ShapeModifierexamples: View {
    var body: some View {
        VStack(spacing: 40) {
            
            HStack(spacing: 30) {
                
                Text("Size")
                
                Rectangle()
                    .stroke(Color.green)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                
                Rectangle()
                    .size(CGSize(width: 90.0, height: 40))
                    .stroke(Color.green)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                
            }
            
            HStack(spacing: 30) {
                
                Text("Inset")
                
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
            
            HStack(spacing: 30) {
                
                Text("Rotated")
                    .rotationEffect(Angle(degrees: 10))
                
                Rectangle()
                    .inset(by: 10)
                    .stroke(Color.green)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                    .rotationEffect(Angle(degrees: 10))
                
                RotatedShape(shape: Rectangle(), angle: Angle(degrees: 10))
                    .stroke(Color.green)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                
            }
            
            HStack(spacing: 30) {
                
                Text("Offset")
                
                Rectangle()
                    .stroke(Color.green, lineWidth: 5)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                    .offset(CGSize(width: 10.0, height: 10.0))
                
                OffsetShape(shape: Rectangle(), offset: CGSize(width: 10.0, height: 10.0))
                    .stroke(Color.green, lineWidth: 3)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                
            }
            
            HStack(spacing: 30) {
                
                Text("Scale")
                
                Rectangle()
                    .stroke(Color.green, lineWidth: 5)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
//                    .scaleEffect(0.6)
                    .scaleEffect(CGSize(width: 0.7, height: 0.7), anchor: .bottomLeading)
                
                ScaledShape(shape: Rectangle(), scale: CGSize(width: 0.9, height: 0.6))
                    .stroke(Color.green, lineWidth: 3)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
            }
            
            HStack(spacing: 30) {
                
                Text("transform")
                
                Rectangle()
                    .stroke(Color.green, lineWidth: 5)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                    .transformEffect(CGAffineTransform(rotationAngle: CGFloat.pi / 20))
                
                TransformedShape(shape: Rectangle(), transform: CGAffineTransform(a: 1.0, b: 0.0, c: 0.2, d: 1.0, tx: -18.0, ty: 20.0))
                    .stroke(Color.green, lineWidth: 5)
                    .frame(width: 100, height: 50)
                    .border(Color.gray)

            }
            
            HStack(spacing: 30) {
                                
                Rectangle()
                    .stroke(Color.green, lineWidth: 5)
                    .frame(width: 100, height: 50)
                    .scaleEffect(CGSize(width: 0.6, height: 0.6))
                    .offset(CGSize(width: 10.0, height: 10.0))
                    .border(Color.gray)

                Rectangle()
                    .stroke(Color.green, lineWidth: 5)
                    .frame(width: 100, height: 50)
                    .offset(CGSize(width: 10.0, height: 10.0))
                    .scaleEffect(CGSize(width: 0.6, height: 0.6))
                    .border(Color.gray)
                
            }
        }
        
    }
}

struct ShapeModifierexamples_Previews: PreviewProvider {
    static var previews: some View {
        ShapeModifierexamples()
    }
}
