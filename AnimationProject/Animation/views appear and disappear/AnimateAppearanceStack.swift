//
//  AnimateAppearanceStack.swift
//  AnimationProject
//
//  Created by Gene Dimitrow on 06.06.21.
//

import SwiftUI

struct AnimateAppearanceStack: View {
    
    @State private var isShown: Bool = false
    @State private var animateText: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Animate text in Stack")
            
            Button(action: {
                withAnimation(.linear(duration: 2.0)) {
                    isShown.toggle()
                }
            }, label: {
                Text(isShown ? "Hide" : "Show")
            })
            
            if isShown {
                VStack {
                    
                    Image("cat_100x100")
                    Text("cute cat")
                        .scaleEffect(animateText ? 1.2 : 1)
                    
                }
                .modifier(Card())
                .frame(maxWidth: .infinity)
                .transition(.slide)
                .onAppear {
                    
                    withAnimation(.linear(duration: 0.5).repeatForever()) {
                        
                        animateText = true
                    }
                }
                .onDisappear {
                    
                    animateText = false
                }
            }
        }
    }
}

struct AnimateAppearanceStack_Previews: PreviewProvider {
    static var previews: some View {
        AnimateAppearanceStack()
    }
}
