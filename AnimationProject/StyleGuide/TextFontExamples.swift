//
//  TextFontExamples.swift
//  DesignProject
//
//  Created by Karin Prater on 13.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct TextFontExamples: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            
            
            VStack(alignment: .leading, spacing: 40) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("system Fonts")
                    
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
                    Text("footeNote")
                        .font(.footnote)
                    
                    Text("caption")
                        .font(.caption)
                    Divider()
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("font weight")
                    
                    Text("black")
                        .fontWeight(.black)
                    Text("heavy")
                        .fontWeight(.heavy)
                    
                    Text("bold")
                        .fontWeight(.bold)
                    Text("semiBold")
                        .fontWeight(.semibold)
                    
                    Text("regular - default")
                        .fontWeight(.regular)
                    Text("medium")
                        .fontWeight(.medium)
                    
                    Text("light")
                        .fontWeight(.light)
                    Text("thin")
                        .fontWeight(.thin)
                    Text("ultrathin")
                        .fontWeight(.ultraLight)
                   
                }
                 Divider()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("italic")
                        .italic()
                    
                    Text("strikethr")
                        .strikethrough()
                    
                    Text("underline")
                        .underline()
                    
                    Text("kerning")
                        .kerning(10)
                    
                    
                    Text("link")
                        .foregroundColor(Color("Accent"))
                    
                    Text("detail")
                        .foregroundColor(Color("Gray3"))
                    
                    Text("error message")
                        .foregroundColor(Color.pink)
                     Divider()
                }
                
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("design font default")
                        .font(.system(.body, design: .default))
                    
                    Text("rounded")
                        .font(.system(.body, design: .rounded))
                    
                    Text("serif")
                        .font(.system(.body, design: .serif))
                    Text("monospaced")
                        .font(.system(.body, design: .monospaced))
                     Divider()
                }
                
                VStack {
                    Text("fixed font size")
                        .font(.system(size: 20))
                    
                    Text("font Futura")
                        .font(.custom("Futura", size: 20))
                    
                    Text("view modifer for font")
                        .modifier(customFont())
                }
            }.padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct TextFontExamples_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            TextFontExamples()
            
            TextFontExamples()
                .environment(\.sizeCategory, .accessibilityLarge)
        }
       // .previewLayout(.fixed(width: 1200, height: 600))
        
    }
}

struct customFont: ViewModifier {
    
    @Environment(\.sizeCategory) var sizeCategory
    let fontName: String =  "Copperplate"//"Futura"
    
    func body(content: Content) -> some View {
        switch sizeCategory {
        case .accessibilityExtraExtraExtraLarge:
            return content
                .font(.custom(fontName, size: 60))
        case .accessibilityExtraExtraLarge:
            return content
            .font(.custom(fontName, size: 56))
        case .accessibilityExtraLarge:
            return content
            .font(.custom(fontName, size: 52))
        case .accessibilityLarge:
            return content
            .font(.custom(fontName, size: 48))
        case .accessibilityMedium:
            return content
            .font(.custom(fontName, size: 44))
        case .extraExtraExtraLarge:
            return content
            .font(.custom(fontName, size: 40))
        case .extraExtraLarge:
            return content
            .font(.custom(fontName, size: 38))
        case .extraLarge:
            return content
            .font(.custom(fontName, size: 36))
        case .large:
            return content
            .font(.custom(fontName, size: 34))
        case .medium:
            return content
            .font(.custom(fontName, size: 33))
        case .small:
            return content
            .font(.custom(fontName, size: 32))
        case .extraSmall:
            return content
            .font(.custom(fontName, size: 31))

        @unknown default:
            return content
                .font(.custom(fontName, size: 35))
        }
        
    }
}
