//
//  ProductListManager.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 12.06.21.
//

import Foundation

class ProductListManager: ObservableObject {
    
    @Published var products: [Product] = []
    
    init(is forTest: Bool = false) {
        
        //fetch and set data to products
    }
    
    func move(indices: IndexSet, to index: Int) {
        
        products.move(fromOffsets: indices, toOffset: index)
    }
    
    func addNewProduct() {
        
        products.append(Product(name: "newly added product"))
    }
    
    func delete(at indexSet: IndexSet) {
        
        for index in indexSet {
            products.remove(at: index)
        }
    }
    
    static func emptyState() -> ProductListManager {
        
        let manager = ProductListManager(is: true)
        manager.products = []
        return manager
    }
    
    static func fullState() -> ProductListManager {
        
        let manager = ProductListManager(is: false)
        manager.products = [Product(name: "first"),
                            Product(name: "second"),
                            Product(name: "third"),
                            Product(name: "fourth"),
                            Product(name: "fifth"),
                            Product(name: "sixth")]
        return manager
    }
}
