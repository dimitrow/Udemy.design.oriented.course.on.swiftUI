//
//  BadWayExample.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 12.06.21.
//

import SwiftUI

struct BadWayExample: View {
    
    @State var products = [Product(name: "first"), Product(name: "second"), Product(name: "third"), Product(name: "fourth"), Product(name: "fifth"), Product(name: "sixth"),]
    
    
    var body: some View {
        
        NavigationView {
            
            List {
                ForEach(products) { product in
                    
                    NavigationLink(destination: Text("DESTINATION: \n\(product.name)")) {
                        
                        Text(product.name)
                    }
                    
                }.onDelete { indexSet in
                    for index in indexSet {
                        products.remove(at: index)
                    }
                }
                .onMove { indexSet, newOffset in
                    
                    products.move(fromOffsets: indexSet, toOffset: newOffset)
                }
                
            }
            .navigationBarTitle(Text("Products"), displayMode: .large)
            .toolbar {
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    
                    EditButton()
                    Button {
                        products.append(Product(name: "newly added product"))
                        
                    } label: {
                        Image(systemName: "plus")
                    }

                }
            }
        }
    }
}

struct BadWayExample_Previews: PreviewProvider {
    static var previews: some View {
        BadWayExample()
    }
}
