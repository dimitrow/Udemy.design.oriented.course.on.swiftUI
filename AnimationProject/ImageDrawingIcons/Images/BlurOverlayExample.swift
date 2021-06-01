//
//  BlurOverlayExample.swift
//  DesignProject
//
//  Created by Karin Prater on 16.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI
import LoremSwiftum

struct BlurOverlayExample: View {
    var body: some View {
        
        VStack {
            CatView()
            Text(Lorem.words(7)).header1()
                .padding()
            Text(Lorem.paragraph).padding()
            
            Spacer()
        }
        .background(Color("Background1"))
        .blur(radius: 10).brightness(-0.2)
        
        .overlay(Text("important messsage").padding().modifier(Card()))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct BlurOverlayExample_Previews: PreviewProvider {
    static var previews: some View {
        BlurOverlayExample()
    }
}

struct CatView: View {
    var body: some View {
        Image("cats")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}
