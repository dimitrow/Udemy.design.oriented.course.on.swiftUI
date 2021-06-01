//
//  LabelView.swift
//  DesignProject
//
//  Created by Karin Prater on 17.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct LabelView: View {
    
    let iconName: String
    let text: String
    let size: CGFloat
    
    var body: some View {
        
        HStack(alignment: .firstTextBaseline, spacing: 20) {
            
            Image(systemName: iconName)
                .font(.system(size: size))
            
            Text(text)
                .font(.system(size: size))
        }
        
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(iconName: "circle", text: "circle", size: 20)
    }
}
