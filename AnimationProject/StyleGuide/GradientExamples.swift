//
//  GradientExamples.swift
//  DesignProject
//
//  Created by Karin Prater on 07.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct GradientExamples: View {
    
    let gradient1 = /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/
    

    let rainbowGradiend = Gradient(colors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.red])
    
    let gradient3 = Gradient(stops: [Gradient.Stop(color: Color("Accent"), location: 0.5), .init(color: Color("Primary"), location: 0.8)])
    
    var body: some View {
        VStack {
            Text("Gradients").font(.title)
            
            Text("linear")
            VStack {
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: UnitPoint(x: 0.9, y: 0), endPoint: .trailing)
                
                LinearGradient(gradient: gradient1, startPoint: .leading, endPoint: .trailing)
                
                LinearGradient(gradient: rainbowGradiend, startPoint: .leading, endPoint: .trailing)
                
                LinearGradient(gradient: gradient3, startPoint: .leading, endPoint: .trailing)
            }.frame(maxHeight: 500)
            
            Text("radial")
            RadialGradient(gradient: rainbowGradiend, center: UnitPoint(x: 0.5, y: 0.5), startRadius: 0, endRadius: 200)
            
            
            Text("angular")
            VStack {
                AngularGradient(gradient: rainbowGradiend, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                AngularGradient(gradient: gradient1, center: .center, angle: Angle(degrees: 0))
            
                AngularGradient(gradient: gradient1, center: .center, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 280))
            }
            
            
            VStack {
                
                Text("colors")
                    .foregroundColor(.white)
                .padding()
                    .background(LinearGradient(gradient: gradient3, startPoint: .leading, endPoint: .trailing))
                .cornerRadius(10)
                
                
                 AngularGradient(gradient: rainbowGradiend, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .mask(Circle())
                
                Text("gradient").padding()
                    .border( AngularGradient(gradient: rainbowGradiend, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/), width: 5)
                
            }
            
        }.padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct GradientExamples_Previews: PreviewProvider {
    static var previews: some View {
        GradientExamples()
            .previewLayout(.fixed(width: 300, height: 1200))
    }
}
