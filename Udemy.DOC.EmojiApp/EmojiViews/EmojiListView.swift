//
//  EmojiListView.swift
//  Udemy.DOC.EmojiApp
//
//  Created by Gene Dimitrow on 27.05.21.
//

import SwiftUI

struct EmojiListView: View {
    
    @ObservedObject var emojiDataModel = EmojiDataModel()
    
    @State private var popOverShown: Bool = false
    
    var body: some View {
             
        NavigationView {
            
            List {
                
                ForEach(emojiDataModel.emojis, id: \.self) { item in
                    Text(item)
                }
                .onDelete(perform: { indices in
                    
                    emojiDataModel.delete(indices)
                })
            }
            .navigationTitle("EMOJIS")
            .navigationBarItems(trailing: Button(action: {
                
                popOverShown = true
            }, label: {
                Text("Add new")
            }))
            .popover(isPresented: $popOverShown, content: {

                AddNewEmojiView(isPresented: $popOverShown,
                                emojiDataModel: emojiDataModel)
            })
        }
    }
}

struct EmojiListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}
