//
//  ImplicitStackExample.swift
//  AnimationProject
//
//  Created by Gene Dimitrow on 02.06.21.
//

import SwiftUI

struct ImplicitStackExample: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Implicit and Stacks")
            
            VStack {
                
                Image("louis")
                    .rotation3DEffect(
                        Angle(degrees: isAnimating ? 360 : 0),
                        axis: (x: 1.0, y: 0.0, z: 0.0),
                        anchor: .center,
                        anchorZ: 0.0,
                        perspective: 0.6
                    )
                Capsule()
                    .stroke(Color.blue, lineWidth: isAnimating ? 1 : 5)
                    .frame(width: 100, height: 150)
                    .offset(x: 0, y: isAnimating ? 10 : 0)
                    .rotationEffect(Angle(degrees: isAnimating ? 360 : 0))
                
            }
            .padding(isAnimating ? 25 : 10)
            .border(Color.green)
            .animation(.spring())
            
            Button(action: {
                
                isAnimating.toggle()
            }, label: {
                Text("Animate")
            })
        }
    }
}

struct ImplicitStackExample_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitStackExample()
    }
}
