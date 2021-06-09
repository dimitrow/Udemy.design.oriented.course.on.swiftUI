//
//  DragGestureExample.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 09.06.21.
//

import SwiftUI

struct DragGestureExample: View {
    
    @GestureState private var gestureOffset: CGSize = .zero
    @State private var steadyOffset: CGSize = .zero
    
    var offset: CGSize {

        return steadyOffset + gestureOffset
    }
    
    var drag: some Gesture {
        
        DragGesture(minimumDistance: 10.0, coordinateSpace: .local)
            .updating($gestureOffset) { value, state, transaction in
                
                state = value.translation
                
            }
            .onEnded { value in
                
                steadyOffset = steadyOffset + value.translation
            }
    }
    
    var body: some View {
        
        VStack {
            
            Text(" OFFSET: \(gestureOffset.width), \(gestureOffset.height)")
            
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .offset(offset)
                .gesture(drag)
        }
        
        
    }
}

struct DragGestureExample_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureExample()
    }
}
