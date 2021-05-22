//
//  TextFontExamples.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 22.05.21.
//

import SwiftUI

struct TextFontExamples: View {
    var body: some View {
        
        HStack(alignment: .top, spacing: 10) {
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("System Fonts")
                
                Text("largeTitle")
                    .font(.largeTitle)
                
                Text("title")
                    .font(.title)
                
                Text("headline")
                    .font(.headline)
                
                Text("subheadline")
                    .font(.subheadline)
                
                Text("body")
                    .font(.body)
                
                Text("callout")
                    .font(.callout)
                
                Text("footnote")
                    .font(.footnote)
                
                Text("caption")
                    .font(.caption)
   
            }
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("Font Weights")
                
                Text("black")
                    .fontWeight(.black)
                Text("heavy")
                    .fontWeight(.heavy)
                Text("bold")
                    .fontWeight(.bold)
                Text("semibold")
                    .fontWeight(.semibold)
                Text("medium")
                    .fontWeight(.medium)
                Text("regular")
                    .fontWeight(.regular)
                Text("light")
                    .fontWeight(.light)
                Text("thin")
                    .fontWeight(.thin)
                Text("ultraLight")
                    .fontWeight(.ultraLight)
  
            }
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("Font Designs")
                
                Text("monospaced")
                    .font(.system(.body, design: .monospaced))
                
                Text("rounded")
                    .font(.system(.body, design: .rounded))
                
                Text("serif")
                    .font(.system(.body, design: .serif))
                  
            }
        }
    }
}

struct TextFontExamples_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            TextFontExamples()
            TextFontExamples().environment(\.sizeCategory, .accessibilityLarge)
        }
        .frame(width: 800)
        .previewLayout(.sizeThatFits)
    }
}
