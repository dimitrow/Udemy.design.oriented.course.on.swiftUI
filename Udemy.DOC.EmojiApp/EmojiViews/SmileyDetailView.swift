//
//  SmileyDetailView.swift
//  Udemy.DOC.EmojiApp
//
//  Created by Gene Dimitrow on 27.05.21.
//

import SwiftUI

struct SmileyDetailView: View {
    
    var smiley: String
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Hello, smiley!")
                .font(.largeTitle)
                .bold()
            Text(smiley)
                .font(.system(size: 260))
            
            Button(action: {
                
                presentation.wrappedValue.dismiss()
            }, label: {
                Text("Dismiss")
            })
            
        }
        .navigationTitle("Smiley detail")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct SmileyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            
            SmileyDetailView(smiley: "🤓")
        }
    }
}
