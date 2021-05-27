//
//  AddNewEmojiView.swift
//  Udemy.DOC.EmojiApp
//
//  Created by Gene Dimitrow on 27.05.21.
//

import SwiftUI

struct AddNewEmojiView: View {
    
    @State var newEmoji: String = ""
    @Binding var isPresented: Bool
    @ObservedObject var emojiDataModel: EmojiDataModel
    var body: some View {
        VStack{
            TextField("new emoji", text: $newEmoji)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action: {
                
                emojiDataModel.addNew(newEmoji)
                isPresented = false
            }, label: {
                Text("add")
            })
        }
    }
}

struct AddNewEmojiView_Previews: PreviewProvider {
    static var previews: some View {

        AddNewEmojiView(isPresented: .constant(false), emojiDataModel: EmojiDataModel())
    }
}
