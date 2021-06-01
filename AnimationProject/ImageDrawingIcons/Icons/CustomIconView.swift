//
//  CustomIconView.swift
//  DesignProject
//
//  Created by Karin Prater on 17.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct CustomIconView: View {
    var body: some View {
        
        VStack(spacing: 20) {
            
            Image(systemName: "bolt")
            
            Image("bolt-new")
                .foregroundColor(Color.red)
                .font(.system(size: 30, weight: .regular))
        
            
            Image("star")
                //.renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(Color.red)
            
            
            
        }
    }
}

struct CustomIconView_Previews: PreviewProvider {
    static var previews: some View {
        CustomIconView()
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
