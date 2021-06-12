//
//  ProbeAllesApp.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 09.06.21.
//

import SwiftUI

@main
struct ProbeAllesApp: App {
    
    @StateObject var productListManager = ProductListManager()
    
    var body: some Scene {
        WindowGroup {
            ProductListView(productListManager: productListManager)
        }
    }
}
