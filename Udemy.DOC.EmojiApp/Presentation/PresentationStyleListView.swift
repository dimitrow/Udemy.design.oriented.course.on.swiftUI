//
//  PresentationStyleListView.swift
//  Udemy.DOC.EmojiApp
//
//  Created by Gene Dimitrow on 27.05.21.
//

import SwiftUI

struct PresentationStyleListView: View {
    
    var body: some View {
        
        NavigationView {
            List {
                
                NavigationLink(
                    destination: PopOverExample(),
                    label: {
                      
                        Text("PopOverExample")
                    })
                
                NavigationLink(
                    destination: AlertExample(),
                    label: {
                      
                        Text("AlertExample")
                    })
                
                NavigationLink(
                    destination: ActionSheetExample(),
                    label: {
                      
                        Text("ActionSheetExample")
                    })
                
                NavigationLink(
                    destination: ModalPresentationExample(),
                    label: {
                      
                        Text("ModalPresentationExample")
                    })

            }
            .navigationTitle("Presentation styles")
        }
    }
}

struct PresentationStyleListView_Previews: PreviewProvider {
    static var previews: some View {
        PresentationStyleListView()
    }
}
