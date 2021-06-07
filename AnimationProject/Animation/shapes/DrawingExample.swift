//
//  DrawingExample.swift
//  AnimationProject
//
//  Created by Gene Dimitrow on 07.06.21.
//

import SwiftUI

struct DrawingExample: View {
    
    @State private var isDrawing: Bool = false
    @State private var isHighlighted: Bool = false
    
    let animation = Animation.easeIn(duration: 4.0)
    
    var body: some View {
        
        VStack {
            Circle()
                .stroke(Color.red, lineWidth: isDrawing ? 5.0 : 0.0)
                .frame(width: 100, height: 100)
                .animation(animation)
            
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(Color.purple, lineWidth: 4.0)
                .frame(width: 100, height: 100)
                .opacity(isDrawing ? 1.0 : 0.0)
                .animation(animation)
            
            Arrow(tipAmount: 0.3, isHorizontal: true)
                .trim(from: isDrawing ? 0 : 1, to: 1.0)
//                .trim(from: 0, to: isDrawing ? 1.0 : 0)
                .stroke(Color.yellow, lineWidth: 6.0)
                .frame(width: 100, height: 100)
//                .frame(width: isDrawing ? CGFloat(100.0) : 0, height: isDrawing ? CGFloat(100.0) : 0)
                .animation(animation)
            
            Circle()
                .trim(from: 0, to: isDrawing ? 1.0 : 0)
                .stroke(Color.green, lineWidth: 5.0)
                .frame(width: 100, height: 100)
                .animation(animation)
            
            Circle()
                .trim(from: 0, to: isDrawing ? 1.0 : 0)
                .stroke(Color.orange, lineWidth: 5.0)
                .frame(width: 100, height: 100)
                .animation(animation.delay(3))
            
            Text("Long press to select")
                .padding()
                .overlay(MarchingRect(isAnimating: isHighlighted))
                .onLongPressGesture {
                    isHighlighted.toggle()
//                    withAnimation {
//                    }
                }
//                .onTapGesture {
//
//                    isHighlighted = false
//                }
            
        }.onAppear{
            
            isDrawing.toggle()
//            withAnimation(.linear(duration: 5.0)) {
//                isDrawing.toggle()
//            }
        }
    }
}

struct MarchingRect: View {
    
    let isAnimating: Bool
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color.blue, style: StrokeStyle(lineWidth: 4.0, lineCap: .round, dash: [8.0], dashPhase: isAnimating ? 15.0 : 0.0))
            .animation(isAnimating ? Animation.linear(duration: 2).repeatForever(autoreverses: false) : Animation.linear(duration: 2))
            
            .opacity(isAnimating ? 1.0 : 0.0)
            .animation(.easeInOut(duration: 0.4))
    }
}

struct DrawingExample_Previews: PreviewProvider {
    static var previews: some View {
        DrawingExample()
    }
}
