//
//  AnimationTimingOverviewExample.swift
//  AnimationProject
//
//  Created by Gene Dimitrow on 02.06.21.
//

import SwiftUI

struct AnimationTimingOverviewExample: View {
    
    @State private var firstIsMoved = false
    @State private var secondIsMoved = false
    @State private var thirdIsMoved = false
    @State private var fourthIsMoved = false
    @State private var fifthIsMoved = false
    @State private var sixthIsMoved = false
    
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            
            Text("Timing Animation Overview")
            
            Text("default")
                .padding()
                .background(Color.yellow)
                .offset(x: firstIsMoved ? 200 : 0, y: 0)
                .onTapGesture {
                    withAnimation(.default) {
                        firstIsMoved.toggle()
                    }
                }
            
            Text("linear")
                .padding()
                .background(Color.yellow)
                .offset(x: secondIsMoved ? 200 : 0, y: 0)
                .onTapGesture {
                    withAnimation(.linear) {
                        secondIsMoved.toggle()
                    }
                }
            
            Text("easeInOut")
                .padding()
                .background(Color.yellow)
                .offset(x: thirdIsMoved ? 200 : 0, y: 0)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 1.1)) {
                        thirdIsMoved.toggle()
                    }
                }
            
            Text("spring")
                .padding()
                .background(Color.yellow)
                .offset(x: fourthIsMoved ? 200 : 0, y: 0)
                .onTapGesture {
                    withAnimation(.spring()) {
                        fourthIsMoved.toggle()
                    }
                }
            
            Text("springy spring")
                .padding()
                .background(Color.yellow)
                .offset(x: fifthIsMoved ? 200 : 0, y: 0)
                .onTapGesture {
                    withAnimation(.spring(response: 0.4,
                                          dampingFraction: 0.6,
                                          blendDuration: 4)) {
                        fifthIsMoved.toggle()
                    }
                }
            
            //https://easings.net/
            
            Text("timing curve")
                .padding()
                .background(Color.yellow)
                .offset(x: sixthIsMoved ? 200 : 0, y: 0)
                .onTapGesture {
                    withAnimation(.timingCurve(0, 1, 1, 1, duration: 1)) {
                        sixthIsMoved.toggle()
                    }
                }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct AnimationTimingOverviewExample_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingOverviewExample()
    }
}
