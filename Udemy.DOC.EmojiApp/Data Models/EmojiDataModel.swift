//
//  EmojiDataModel.swift
//  Udemy.DOC.EmojiApp
//
//  Created by Gene Dimitrow on 27.05.21.
//

import Foundation
import Combine

class EmojiDataModel: ObservableObject {
    
    @Published var emojis = ["☠️", "👻", "🧟‍♂️", "👀", "🧠", "🦷", "🐞"]
    @Published var smileys = ["😂", "😎", "😀", "😜", "🧐", "🤓", "🤨"]
    
    func delete(_ indices: IndexSet) {
        
        for index in indices {
         
            print("removing at: \(index)")
            emojis.remove(at: index)
        }
    }
    
    func addNew(_ emoji: String) {
        
        emojis.append(emoji)
    }
    
}
