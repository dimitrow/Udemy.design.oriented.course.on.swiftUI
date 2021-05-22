//
//  StyleGuideCard.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 22.05.21.
//

import SwiftUI

struct StyleGuideCard: View {
    var body: some View {
        
        HStack {
            
            Text("Generic Card")
                .modifier(GenericCard())
            
            Text("Accent Card")
                .modifier(AccentCard())
                
        }
        .padding()
    }
}

struct StyleGuideCard_Previews: PreviewProvider {
    static var previews: some View {
        StyleGuideCard()
            .frame(width: 400)
            .previewLayout(.sizeThatFits)
    }
}

//MARK: - modifiers:

struct GenericCard: ViewModifier {
    
    public func body(content: Content) -> some View {
        
        return content
            .padding()
            .background(Color("PrimaryLightColor"))
            .cornerRadius(10.0)
            .modifier(CustomShadowModifier(elevation: .high))
            
    }
}

struct AccentCard: ViewModifier {
    
    public func body(content: Content) -> some View {
        
        return content
            .padding()
            .background(Color("AccentColor"))
            .cornerRadius(15.0)
            .modifier(CustomShadowModifier(elevation: .low))
    }
}
