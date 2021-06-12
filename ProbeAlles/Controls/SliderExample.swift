//
//  SliderExample.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 11.06.21.
//

import SwiftUI

struct SliderExample: View {
    
    @State private var offset: CGFloat = 0.0
    @State private var secondOffset: CGFloat = 0.0
    @State private var isEditing: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20.0) {
            
            Text("Sliders")
            
            HStack{
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 60, height: 40)
                    .offset(CGSize(width: 0.0, height: offset))
                Text("offset is: \(Int(offset))")
                    .frame(width: 100.0, alignment: .leading)
                
                Slider(value: $offset, in: 0...100)
                    .frame(width: 100.0, alignment: .trailing)
            }
            .padding()
            
            
            if #available(iOS 15.0, *) {
                Slider(value: $offset, in: 0...100) {
                    Text("Labelled ")
                } minimumValueLabel: {
                    Text("0")
                } maximumValueLabel: {
                    Text("100")
                }
            } else {
                // Fallback on earlier versions
            }

            Slider(value: $secondOffset, in: 0...100) { editing in
                
                isEditing = editing
                
            } label: {
                Text ("Choose value")
            }
            .background(isEditing ? Color.green : Color.clear)

            
        }
        .padding()
        
    }
}

struct SliderExample_Previews: PreviewProvider {
    static var previews: some View {
        SliderExample()
    }
}
