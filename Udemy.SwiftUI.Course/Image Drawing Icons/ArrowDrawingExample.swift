//
//  ArrowDrawingExample.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 24.05.21.
//

import SwiftUI

struct ArrowDrawingExample: View {
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text("custom Arrow")
            
            Arrow(tipAmount: 0.2, isHorizontal: false)
                .stroke(Color.green, lineWidth: 4.0)
                .frame(width: 100, height: 300)
            
            Arrow(tipAmount: 0.2, isHorizontal: true)
                .stroke(Color.green, lineWidth: 4.0)
                .frame(width: 300, height: 100)
        }
    }
}

struct ArrowDrawingExample_Previews: PreviewProvider {
    static var previews: some View {
        ArrowDrawingExample()
    }
}

struct Arrow: Shape {
    
    let tipAmount: CGFloat
    let isHorizontal: Bool
    
    func path(in rect: CGRect) -> Path {
        
        var arrowPath = Path()
        
        if isHorizontal {
            
            arrowPath.move(to: CGPoint(x: rect.origin.x, y: rect.height / 2))
            arrowPath.addLine(to: CGPoint(x: rect.width, y: rect.height / 2))
            
            arrowPath.move(to: CGPoint(x: rect.width * (1 - tipAmount), y: rect.origin.y))
            arrowPath.addLine(to: CGPoint(x: rect.width, y: rect.height / 2))
            arrowPath.addLine(to: CGPoint(x: rect.width * (1 - tipAmount), y: rect.height))
        } else {
            
            arrowPath.move(to: CGPoint(x: rect.width / 2, y: rect.origin.y))
            arrowPath.addLine(to: CGPoint(x: rect.width / 2, y: rect.height))
            
            arrowPath.move(to: CGPoint(x: rect.origin.x, y: rect.height * tipAmount))
            arrowPath.addLine(to: CGPoint(x: rect.width / 2, y: rect.origin.y))
            arrowPath.addLine(to: CGPoint(x: rect.width, y: rect.height * tipAmount))
        }
        
        
        return arrowPath
    }
}
