//
//  MagnificationExample.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 10.06.21.
//

import SwiftUI

struct MagnificationExample: View {
    
    @State private var steadyStateMagnification: CGFloat = 1.0
    @GestureState private var gestureMagnification: CGFloat = 1.0
    
    var magnification: CGFloat {
        
        return steadyStateMagnification * gestureMagnification
    }
    
    var pinch: some Gesture {
        
        MagnificationGesture()
            .updating($gestureMagnification) { value, state, transaction in
                
                state = value
            }
            .onEnded { value in
                
                steadyStateMagnification *= value
            }
    }
    
    var body: some View {
        
        Image("derIgel")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaleEffect(magnification)
            .gesture(pinch)
        
    }
}

struct MagnificationExample_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationExample()
    }
}
