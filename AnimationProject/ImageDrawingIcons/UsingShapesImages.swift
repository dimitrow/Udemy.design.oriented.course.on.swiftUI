//
//  UsingShapesImages.swift
//  DesignProject
//
//  Created by Karin Prater on 16.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct UsingShapesImages: View {
    
    let rainbowGradiend = Gradient(colors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.red])
    
    var body: some View {
        ScrollView {
            VStack {
                
                AngularGradient(gradient: rainbowGradiend, center: .center)
                    .frame(width: 100, height: 100)
                    .mask(EmptyArrow(isVertical: true))
                
                AngularGradient(gradient: rainbowGradiend, center: .center)
                    .frame(width: 100, height: 100)
                    .mask(Text("gradient"))
                
                Image("cat_100x100")
                    .mask(Capsule())
                
                
                Image("cat_100x100")
                    .mask(Capsule())
                    .overlay(Circle().trim(from: 0, to: 0.9).stroke(Color.white, lineWidth: 2).padding(3))
                
                
                VStack {
                    Image("dog_400x400")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 150, alignment: .top).clipped()
                    
                    Text("dogs dogs dogs")
                    
                }.frame(width: 200, height: 200, alignment: .top)
                    .cornerRadius(10)
                    .background(Color("Background2").cornerRadius(10).shadow(radius: 30))
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct UsingShapesImages_Previews: PreviewProvider {
    static var previews: some View {
        UsingShapesImages()
    }
}
