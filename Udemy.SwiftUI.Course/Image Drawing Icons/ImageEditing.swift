//
//  ImageEditing.swift
//  Udemy.SwiftUI.Course
//
//  Created by Gene Dimitrow on 24.05.21.
//

import SwiftUI

struct ImageEditing: View {
    var body: some View {
        
        VStack {
            
            Image("dog_400x400")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300, alignment: .top)
                .clipped()
            Text("DOGS ))").padding()
        }.frame(width: 400, height: 400, alignment: .top)
        .cornerRadius(20)
        .background((Color.white).cornerRadius(20).shadow(radius: 20))
        
    }
}

struct ImageEditing_Previews: PreviewProvider {
    static var previews: some View {
        ImageEditing()
            .previewLayout(.fixed(width: 600, height: 600))
            
    }
}
