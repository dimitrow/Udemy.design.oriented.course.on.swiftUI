//
//  ShadowViewModifiersSampleView.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 21.05.21.
//

import SwiftUI

struct ShadowViewModifiersSampleView: View {
    var body: some View {
        
        VStack {
            
            ShadowModifierSampleView()
                .modifier(CustomShadowModifier(elevation: .low))
            ShadowModifierSampleView()
                .modifier(CustomShadowModifier(elevation: .medium))
            ShadowModifierSampleView()
                .modifier(CustomShadowModifier(elevation: .high))
            
        }
        .padding(30)
    }
}

struct ShadowViewModifiers_Previews: PreviewProvider {
    static var previews: some View {
        ShadowViewModifiersSampleView()
            .frame(width: 300)
            .previewLayout(.sizeThatFits)
    }
}

//MARK: - sample view and modificators

struct ShadowModifierSampleView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .foregroundColor(Color("AccentColor"))
            .padding()
    }
}

enum ShadowElevation {
     
    case low
    case medium
    case high
}

struct CustomShadowModifier: ViewModifier {
    
    let elevation: ShadowElevation
    
    public func body(content: Content) -> some View {
        switch elevation {
        case .low:
            
            return content.shadow(color: Color.black.opacity(0.45), radius: 5, x: 0.0, y: 0.0)
        case .medium:
            
            return content.shadow(color: Color.black.opacity(0.45), radius: 10, x: 0.0, y: 0.0)
        case .high:
            
            return content.shadow(color: Color.black.opacity(0.45), radius: 15, x: 0.0, y: 0.0)
        }
    }
}
