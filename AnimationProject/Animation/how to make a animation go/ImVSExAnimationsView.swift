//
//  ImVSExAnimationsView.swift
//  AnimationProject
//
//  Created by Gene Dimitrow on 02.06.21.
//

import SwiftUI

struct ImVSExAnimationsView: View {
    
    @State private var firstImageIsZoomed = false
    @State private var secondImageIsZoomed = false
    @State private var thirdImageIsZoomed = false
    
    var body: some View {
        
        VStack(spacing: 40) {
            
            Text("Implicit VS Explicit")
            
            HStack {
                
                Text("Dog")
                
                Image("dog_200x200")
                    .resizable()
                    .frame(width: firstImageIsZoomed ? CGFloat(150) : CGFloat(100),
                           height: firstImageIsZoomed ? CGFloat(150) : CGFloat(100))
                
                Button(action: {
                    
                    firstImageIsZoomed.toggle()
                }, label: {
                    Text("Zoom")
                })
            }
            .border(Color.gray)
            
            HStack {
                
                Text("louis")
                
                Image("louis")
                    .resizable()
                    .frame(width: secondImageIsZoomed ? CGFloat(150) : CGFloat(100),
                           height: secondImageIsZoomed ? CGFloat(150) : CGFloat(100))
                    .animation(.easeInOut)
                
                Button(action: {
                    
                    secondImageIsZoomed.toggle()
                }, label: {
                    Text("Zoom")
                })
            }
            .border(Color.gray)
            
            HStack {
                
                Text("matilda")
                
                Image("matilda")
                    .resizable()
                    .frame(width: thirdImageIsZoomed ? CGFloat(150) : CGFloat(100),
                           height: thirdImageIsZoomed ? CGFloat(150) : CGFloat(100))
//                    .animation(.easeInOut)
                
                Button(action: {
                    
                    withAnimation(.easeInOut) {
                        
                        thirdImageIsZoomed.toggle()
                    }
                    
                }, label: {
                    Text("Zoom")
                })
            }
            .border(Color.gray)
        }
    }
}

struct ImVSExAnimationsView_Previews: PreviewProvider {
    static var previews: some View {
        ImVSExAnimationsView()
    }
}
