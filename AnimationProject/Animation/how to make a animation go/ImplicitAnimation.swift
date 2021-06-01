//
//  ImplicitAnimation.swift
//  AnimationProject
//
//  Created by Gene Dimitrow on 01.06.21.
//

import SwiftUI

struct ImplicitAnimation: View {
    
    @State private var firstImageIsZoomed = false
    @State private var secondImageIsZoomed = false
    @State private var thirdImageIsZoomed = false
    @State private var forthImageIsZoomed = false
    
    var body: some View {
        
        VStack {
            
            Text("implicit animations .animation(Animation.linear())")
                .font(.body)
            
            MinimeView()
                .colorMultiply(firstImageIsZoomed ? .red : .green)
                .scaleEffect(firstImageIsZoomed ? 0.5 : 1, anchor: .center)
                .animation(Animation.easeInOut(duration: 0.6))
                .border(Color.gray)
                .onTapGesture {
                    
                    firstImageIsZoomed.toggle()
                }
            
            MinimeView()
                .colorMultiply(secondImageIsZoomed ? .red : .green)
                .animation(Animation.easeInOut(duration: 0.6))
                .scaleEffect(secondImageIsZoomed ? 0.5 : 1, anchor: .center)
                .border(Color.gray)
                .onTapGesture {
                    
                    secondImageIsZoomed.toggle()
                }
            
            MinimeView()
                .colorMultiply(thirdImageIsZoomed ? .red : .green)
                .animation(Animation.easeInOut(duration: 0.9))
                .scaleEffect(thirdImageIsZoomed ? 0.5 : 1, anchor: .center)
                .animation(Animation.default)
                .border(Color.gray)
                .onTapGesture {
                    
                    thirdImageIsZoomed.toggle()
                }
            
            MinimeView()
                .colorMultiply(forthImageIsZoomed ? .red : .green)
                .animation(nil)
                .scaleEffect(forthImageIsZoomed ? 0.5 : 1, anchor: .center)
                .animation(Animation.default)
                .border(Color.gray)
                .onTapGesture {
                    
                    forthImageIsZoomed.toggle()
                }
        }
    }
}

struct ImplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitAnimation()
    }
}

struct MinimeView: View {
    
    var body: some View {
        Image("minime")
            .resizable()
            .frame(width: 100, height: 100)
    }
}
