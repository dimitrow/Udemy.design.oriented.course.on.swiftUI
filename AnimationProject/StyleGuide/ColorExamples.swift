//
//  ColorExamples.swift
//  DesignProject
//
//  Created by Karin Prater on 07.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct ColorExamples: View {
    var body: some View {
        VStack {
             Text("Style color")
            
            Color("Accent")
            .frame(width: 100, height: 50)
            
           Color("Primary")
            .frame(width: 100, height: 50)
            
            Color(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1))
            .frame(width: 100, height: 50)
            
            
            Text("example").background(Color("Primary"))
            
            RoundedRectangle(cornerRadius: 20).fill(Color("Accent"))
            .frame(width: 100, height: 50)
            
            RoundedRectangle(cornerRadius: 20).stroke(Color("Accent"))
            .frame(width: 100, height: 50)
   
            Button(action: {
                
            }) {
                Text("test color")
            }
        
        }//.accentColor(Color("Accent"))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ColorExamples_Previews: PreviewProvider {
    static var previews: some View {
        ColorExamples()
    }
}
