//
//  SmileysListView.swift
//  Udemy.DOC.EmojiApp
//
//  Created by Gene Dimitrow on 27.05.21.
//

import SwiftUI

struct SmileysListView: View {
    
    @ObservedObject var dataModel = EmojiDataModel()
    
    var body: some View {
        
        NavigationView {
            
            List(dataModel.smileys, id: \.self) { smiley  in
                
                NavigationLink(
                    destination: SmileyDetailView(smiley: smiley),
                    label: {
                      
                        SmileyRow(smiley: smiley)
                    })
                
            }
            .navigationTitle("Smileys")
        }
        
    }
}

struct SmileysListView_Previews: PreviewProvider {
    static var previews: some View {
        SmileysListView()
    }
}

struct SmileyRow: View {
    
    var smiley: String
    
    var body: some View {
        
        Text(smiley)
    }
}
