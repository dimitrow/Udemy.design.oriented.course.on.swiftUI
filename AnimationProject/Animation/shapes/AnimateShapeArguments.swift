//
//  AnimateShapeArguments.swift
//  AnimationProject
//
//  Created by Gene Dimitrow on 07.06.21.
//

import SwiftUI

struct AnimateShapeArguments: View {
    
    @State private var isFinished: Bool = false
    
    var body: some View {
        
        VStack {
            
            Button(action: {
                withAnimation(.easeInOut(duration: 2.0)) {
                    isFinished.toggle()
                }
            }, label: {
                Text("Animate Shape")
            })
            
            HStack {
                RoundedRectangle(cornerRadius: isFinished ? 25 : 0)
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                
                PiShape(pct: self.isFinished ? 1 : 0)
                    .fill(Color.green)
                    .frame(width:  50, height: 50)
            }
            
            Arrow(tipAmount: isFinished ? 0.4 : 0.2, isHorizontal: true)
                .stroke(Color.blue, lineWidth: 4.0)
                .frame(width: 200, height: 100)
        }
        
    }
}

struct AnimateShapeArguments_Previews: PreviewProvider {
    static var previews: some View {
        AnimateShapeArguments()
    }
}
