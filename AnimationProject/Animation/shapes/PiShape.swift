//
//  PiShape.swift
//  AnimationProject
//
//  Created by Karin Prater on 23.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct PiShape: Shape {
    var pct: CGFloat
    
    var animatableData: CGFloat {
        get { return pct }
        set { pct = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            
            path.move(to: CGPoint(x: rect.width, y: rect.height / 2))
            
            
            path.addArc(center: CGPoint(x: rect.width / 2, y: rect.height / 2), radius: min(rect.width, rect.height) / 2, startAngle: Angle.degrees(0), endAngle: Angle.degrees(Double(pct) * 360.0), clockwise: false)
            
            path.addLine(to: CGPoint(x: rect.width / 2, y: rect.height / 2))
            path.closeSubpath()
           
        }
    }

}
