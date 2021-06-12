//
//  ProductListView.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 12.06.21.
//

import SwiftUI

struct ProductListView: View {
    
    @ObservedObject var productListManager: ProductListManager

    var body: some View {
        
        NavigationView {
            ZStack {
                List {
                    ForEach(productListManager.products) { product in
                        
                        NavigationLink(destination: Text("DESTINATION: \n\(product.name)")) {
                            
                            Text(product.name)
                        }
                        
                    }.onDelete { indexSet in
                        productListManager.delete(at: indexSet)
                    }
                    .onMove { indexSet, newOffset in
                        productListManager.move(indices: indexSet, to: newOffset)
                    }
                }
                
                if productListManager.products.isEmpty {
                    Text("Please add some products")
                }
            }
            .navigationBarTitle(Text("Products"), displayMode: .large)
            .toolbar {
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    
                    EditButton()
                    Button {
                        productListManager.addNewProduct()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct RefactoredExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            ProductListView(productListManager: ProductListManager.fullState())
                .previewDisplayName("full state preview")
//            ProductListView(productListManager: ProductListManager.emptyState())
//                .previewDisplayName("empty state preview")
        }
    }
}
