//
//  ColorSampleView.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 21.05.21.
//

import SwiftUI

struct ColorSampleView: View {
    
    let colorName: String
    
    var body: some View {
        HStack {
            Text(colorName)
                .foregroundColor(Color(colorName))
            Spacer()
            Color(colorName)
                .frame(minWidth: 100,
                       idealWidth: 130,
                       maxWidth: 140,
                       minHeight: 40,
                       idealHeight: 80,
                       maxHeight: 90)
            
        }
        .padding(.leading)
        .background(Color("BackgroundColor"))
    }
}

struct ColorSampleView_Previews: PreviewProvider {
    static var previews: some View {
        
        ColorSampleView(colorName: "PrimaryDarkColor")
            .frame(width: 400.0)
            .previewLayout(.sizeThatFits)
        
        ColorSampleView(colorName: "PrimaryDarkColor")
            .frame(width: 400.0)
            .previewLayout(.sizeThatFits)
            .environment(\.colorScheme, .dark)
    }
}
