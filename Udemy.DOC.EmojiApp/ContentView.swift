//
//  ContentView.swift
//  Udemy.DOC.EmojiApp
//
//  Created by Gene Dimitrow on 27.05.21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Int = 0
    
    var body: some View {
        
        TabView(selection: $selection,
                content:  {
                    
                    EmojiListView()
                        .tag(0)
                        .tabItem {
                            Image(systemName: "circle")
                            Text("Emoji")
                            
                        }
                    SmileysListView()
                        .tag(1)
                        .tabItem {
                            Image(systemName: "square")
                            Text("Smileys")
                            
                        }
                    PresentationStyleListView()
                        .tag(2)
                        .tabItem {
                            Image(systemName: "triangle")
                            Text("Presentation")
                        }
                    
                })
            .accentColor(.green)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
