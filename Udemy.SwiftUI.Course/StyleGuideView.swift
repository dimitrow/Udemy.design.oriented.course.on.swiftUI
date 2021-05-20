//
//  StyleGuideView.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 20.05.21.
//

import SwiftUI

struct StyleGuideView: View {
    var body: some View {
        VStack {
            
            ColorSampleView(colorName: "AccentColor")
            ColorSampleView(colorName: "DividerColor")
            ColorSampleView(colorName: "PrimaryColor")
            ColorSampleView(colorName: "PrimaryDarkColor")
            ColorSampleView(colorName: "PrimaryLightColor")
            ColorSampleView(colorName: "TextColor")
            ColorSampleView(colorName: "TextPrimaryColor")
            ColorSampleView(colorName: "TextSecondaryColor")

        }
        .padding()
        .background(Color("BackgroundColor"))
    }
}

struct StyleGuideView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StyleGuideView()
            StyleGuideView()
                .environment(\.colorScheme, .dark)
        }
    }
}

struct ColorSampleView: View {
    
    let colorName: String
    
    var body: some View {
        HStack {
            Text(colorName)
            Spacer()
            Color(colorName)
                .frame(minWidth: 100,
                       idealWidth: 150,
                       maxWidth: 160,
                       minHeight: 40,
                       idealHeight: 80,
                       maxHeight: 90)
            
        }
    }
}
