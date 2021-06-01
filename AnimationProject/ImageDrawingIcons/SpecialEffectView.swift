//
//  SpecialEffectView.swift
//  DesignProject
//
//  Created by Karin Prater on 17.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI
import LoremSwiftum

struct SpecialEffectView: View {
    var body: some View {
        VStack {
            
            
            Text(Lorem.paragraph).rotation3DEffect(Angle(degrees: 40), axis: (x: 1, y: 0, z: 0))
                .frame(width: 300)
                .shadow(radius: 2, x : 0, y: 5)
            
            
            Image("dog_100x100")
            .resizable()
            .frame(width: 40, height: 40)
            .rotation3DEffect(Angle(degrees: 40), axis: (x: 1, y: 0, z: 0))
            
            Image("dog_100x100")
                     .rotation3DEffect(Angle(degrees: 40), axis: (x: 1, y: 0, z: 0))
            .shadow(radius: 2, x : 0, y: 5)
            
            
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct SpecialEffectView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialEffectView()
    }
}
