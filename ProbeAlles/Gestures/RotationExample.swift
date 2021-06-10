//
//  RotationExample.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 10.06.21.
//

import SwiftUI

struct RotationExample: View {
    
    @State private var steadyStateAngle: Double = 0.0
    @GestureState private var gestureAngle: Double = 1.0
    
    var angle: Double {
        
        return steadyStateAngle + gestureAngle
    }
    
    var rotate: some Gesture {
        
        RotationGesture()
            
            .updating($gestureAngle) { latestAngle, gestureAngle, transaction in
                
                gestureAngle = latestAngle.degrees
            }
            .onEnded { latestAngle in
                
                steadyStateAngle += latestAngle.degrees
            }
    }
    
    var body: some View {
        
        Image("derIgel")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .rotationEffect(Angle(degrees: angle))
            .gesture(rotate)
        
    }
}

struct RotationExample_Previews: PreviewProvider {
    static var previews: some View {
        RotationExample()
    }
}
