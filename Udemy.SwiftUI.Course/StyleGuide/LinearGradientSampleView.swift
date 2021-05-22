//
//  LinearGradientSampleView.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 21.05.21.
//

import SwiftUI

let primaryLinearGradient = LinearGradient(gradient: Gradient(colors: [Color("PrimaryColor"),
                                                                       Color("PrimaryLightColor")]),
                                           startPoint: .leading,
                                           endPoint: .trailing)

let textLinearGradient = LinearGradient(gradient: Gradient(colors: [Color("TextPrimaryColor"),
                                                                    Color("TextSecondaryColor")]),
                                        startPoint: .leading,
                                        endPoint: .trailing)

struct LinearGradientSampleView: View {
    
    let gradient: LinearGradient
    let title: String
    
    var body: some View {
        VStack {
            Text(title)
                .foregroundColor(Color("TextPrimaryColor"))
            gradient.frame(height: 80)
        }
        .padding()
        .frame(width: .infinity, height: 120)
        .background(Color("BackgroundColor"))
    }
}

struct LinearGradientSampleView_Previews: PreviewProvider {
    static var previews: some View {
        
        LinearGradientSampleView(gradient: primaryLinearGradient, title: "primaryLinearGradient")
            .frame(width: 400.0)
            .previewLayout(.sizeThatFits)
        
        LinearGradientSampleView(gradient: primaryLinearGradient, title: "primaryLinearGradient")
            .frame(width: 400.0)
            .previewLayout(.sizeThatFits)
            .environment(\.colorScheme, .dark)
    }
}
