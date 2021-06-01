//
//  CustomShapeDrawings.swift
//  DesignProject
//
//  Created by Karin Prater on 16.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct CustomShapeDrawings: View {
    var body: some View {
        VStack {
            
//            MyShape()
//                .stroke(Color.red, lineWidth: 5)
//            .frame(width: 200, height: 300)
//                .border(Color.gray)
            
            Arrow(tipAmoun: 0.2, isHorizontal: false)
                           .stroke(Color.red, lineWidth: 5)
                       .frame(width: 50, height: 150)
                           .border(Color.gray)
            
            Arrow(tipAmoun: 0.2, isHorizontal: true)
                .stroke(Color.red, lineWidth: 5)
               // .rotationEffect(Angle(degrees: 90))
            .frame(width: 200, height: 100)
                .border(Color.gray)
            
            ZStack {
                 Arrow(tipAmoun: 0.1, isHorizontal: false)
                .stroke(Color.gray)
                    .frame(width: 20)
                 Arrow(tipAmoun: 0.1, isHorizontal: true)
                    .stroke(Color.gray)
                  .frame(height: 20)
                
            } .frame(width: 200, height: 200)
            
            EmptyArrow(isVertical: true)
            .fill(Color.gray)
            .frame(width: 200, height: 100)
            
            EmptyArrow(isVertical: false)
                .stroke(Color.gray, lineWidth: 5)
                       .frame(width: 200, height: 100)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct CustomShapeDrawings_Previews: PreviewProvider {
    static var previews: some View {
        CustomShapeDrawings()
    }
}


struct MyShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 20, y: rect.height / 2))
        path.addRect(CGRect(x: 20, y: 20, width: 30, height: 30))
        
        path.addQuadCurve(to: CGPoint(x: 0, y: rect.height), control: CGPoint(x: 20, y: rect.height))
        
        
        return path
    }
    
}

struct Arrow: Shape {
    
    let tipAmoun: CGFloat
    let isHorizontal: Bool
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        if isHorizontal {
            path.move(to: CGPoint(x: 0, y: rect.height / 2))
            path.addLine(to: CGPoint(x: rect.width , y: rect.height / 2))
            path.addLine(to: CGPoint(x: rect.width * (1 - tipAmoun) , y: 0))
            
            path.move(to: CGPoint(x: rect.width , y: rect.height / 2))
            path.addLine(to: CGPoint(x: rect.width * (1 - tipAmoun) , y: rect.height))
            
        }else {
            path.move(to: CGPoint(x: rect.width / 2, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width / 2, y: 0))
            path.addLine(to: CGPoint(x: 0, y: tipAmoun * rect.height))
            path.move(to: CGPoint(x: rect.width / 2, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: tipAmoun * rect.height))
        }
        return path
    }
}

