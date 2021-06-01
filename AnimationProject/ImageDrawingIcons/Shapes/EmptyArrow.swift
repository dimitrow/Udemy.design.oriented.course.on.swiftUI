//
//  EmptyArrow.swift
//  DesignProject
//
//  Created by Karin Prater on 20.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct EmptyArrow: Shape {
    
    let isVertical: Bool
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            let width = rect.width
            let height = rect.height
            
            // 2.
            if isVertical {
                path.addLines( [
                    CGPoint(x: 0, y: height * 0.8),
                    CGPoint(x: 0, y: height * 0.2),
                    CGPoint(x: width * 0.8, y: height * 0.2),
                    CGPoint(x: width * 0.8, y: 0),
                    CGPoint(x: width, y: height * 0.5),
                    CGPoint(x: width * 0.8, y: height),
                    CGPoint(x: width * 0.8, y: height * 0.8)
                ])
            }else {
                path.addLines( [
                    CGPoint(x: width * 0.4, y: height),
                    CGPoint(x: width * 0.4, y: height * 0.4),
                    CGPoint(x: width * 0.2, y: height * 0.4),
                    CGPoint(x: width * 0.5, y: height * 0.1),
                    CGPoint(x: width * 0.8, y: height * 0.4),
                    CGPoint(x: width * 0.6, y: height * 0.4),
                    CGPoint(x: width * 0.6, y: height)
                    
                ])
            }
            // 3.
            path.closeSubpath()
        }
    }
}



