//
//  ProgressIndicatorExample.swift
//  AnimationProject
//
//  Created by Gene Dimitrow on 08.06.21.
//

import SwiftUI

struct ProgressIndicatorExample: View {
    
    @State private var progress: CGFloat = 0.0
    @ObservedObject var runningTimer = RunningTimer(timeInterval: 1.0)
    
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Button(action: {
                    
                    progress = 1.0
                }, label: {
                    Text("Fetch my data")
                })
                
                Color(.yellow)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .modifier(ProgressIndicatorModifier(pct: progress))
                    .animation(.linear(duration: 4.0))
            }
            
            HStack {
                
                Button(action: {
                    
                    runningTimer.isRunning.toggle()
                }, label: {
                    Text("run my timer")
                })
                
                Color(.orange)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .modifier(ProgressIndicatorModifier(pct: runningTimer.progress))
                    .animation(.linear(duration: 0.1))
            }
        }
    }
}

struct ProgressIndicatorExample_Previews: PreviewProvider {
    static var previews: some View {
        ProgressIndicatorExample()
    }
}

struct ProgressIndicatorModifier: AnimatableModifier {
    
    var pct: CGFloat
    
    var animatableData: CGFloat {
        
        get { pct }
        set { pct = newValue }
    }
    
    func body(content: Content) -> some View {
        
        return content
            .overlay(
                
                ZStack {
                    Circle()
                        .trim(from: 0.0, to: pct)
                        .stroke(lineWidth: 4.0)
                        .foregroundColor(.green)
                    Text("\(Int(pct * 100))%")
                })
    }
}
