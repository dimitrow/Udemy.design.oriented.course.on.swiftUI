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
            VStack {
                Text("Color samples")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TextPrimaryColor"))
                
                ColorSampleView(colorName: "AccentColor")
                ColorSampleView(colorName: "DividerColor")
                ColorSampleView(colorName: "PrimaryColor")
                ColorSampleView(colorName: "PrimaryDarkColor")
                ColorSampleView(colorName: "PrimaryLightColor")
                ColorSampleView(colorName: "TextColor")
                ColorSampleView(colorName: "TextPrimaryColor")
                ColorSampleView(colorName: "TextSecondaryColor")

            }
            VStack {
                Text("Gradients")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TextPrimaryColor"))
                
                
            }
        }
        
        .padding()
        .background(Color("BackgroundColor"))
    }
}

struct StyleGuideView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StyleGuideView()
                .frame(width: 400.0)
                .previewLayout(.sizeThatFits)
                
            StyleGuideView()
                .environment(\.colorScheme, .dark)
                .frame(width: 400.0)
                .previewLayout(.sizeThatFits)
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
                       idealWidth: 130,
                       maxWidth: 140,
                       minHeight: 40,
                       idealHeight: 80,
                       maxHeight: 90)
            
        }
    }
}
