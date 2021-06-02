//
//  ExplicitAnimation.swift
//  AnimationProject
//
//  Created by Gene Dimitrow on 01.06.21.
//

import SwiftUI

struct ExplicitAnimation: View {
    
    @State private var firstImageIsZoomed = false
     
    @State private var isZoomed = false
    @State private var isRed = false
    
    var body: some View {
        
        VStack {
            
            Text("explicit withAnimation(Animation.linear { ... }")
                .font(.body)
            
            MinimeView()
                .colorMultiply(firstImageIsZoomed ? .red : .green)
                .scaleEffect(firstImageIsZoomed ? 0.5 : 1, anchor: .center)
                .border(Color.gray)
                .onTapGesture {
                    withAnimation(Animation.linear(duration: 0.7)) {
                        
                        firstImageIsZoomed.toggle()
                    }
                }
            
            MinimeView()
                .colorMultiply(isRed ? .red : .green)
                .scaleEffect(isZoomed ? 1.0 : 0.5, anchor: .center)
                .border(Color.gray)
                .onTapGesture {
                    withAnimation(Animation.linear(duration: 0.7)) {
                        
                        isZoomed.toggle()
                    }
                    isRed.toggle()
                }
        }
    }
}

struct ExplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitAnimation()
    }
}
