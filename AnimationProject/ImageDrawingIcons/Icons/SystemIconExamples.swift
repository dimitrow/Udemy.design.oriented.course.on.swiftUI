//
//  SystemIconExamples.swift
//  DesignProject
//
//  Created by Karin Prater on 16.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct SystemIconExamples: View {
    var body: some View {
        
        VStack {
            HStack {
                Text("Icons")
                Image(systemName: "person.crop.circle")
                
                Image(systemName: "person.crop.circle")
                    .imageScale(.small)
                
                Image(systemName: "person.crop.circle")
                    .imageScale(.medium)
                
                Image(systemName: "person.crop.circle")
                    .imageScale(.large)
                
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 60, weight: .regular))
                
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                
                
                Image(systemName: "pencil")
                    .foregroundColor(Color.orange)
                
            }
            
            
            LabelView(iconName: "person.crop.circle", text: "peron", size: 20)
                .foregroundColor(Color.gray)
                .font(.title)
            
            
            Button(action: {
                
            }) { LabelView(iconName: "person.crop.circle", text: "button person", size: 20)
            }
        }
        
        
    }
}

struct SystemIconExamples_Previews: PreviewProvider {
    static var previews: some View {
        SystemIconExamples()
    }
}



