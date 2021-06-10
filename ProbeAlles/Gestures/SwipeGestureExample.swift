//
//  SwipeGestureExample.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 09.06.21.
//

import SwiftUI

struct SwipeGestureExample: View {
    
    let items = ["erste", "zweite", "dritte"]
    
    @State private var selectedItem: Int = 0
    
    var swipe: some Gesture {
        
        DragGesture(minimumDistance: 50.0, coordinateSpace: .local)
            .onEnded { value in
                
                if value.translation.width < 0, items.count - 1 > selectedItem {
                    selectedItem += 1
                } else if value.translation.width > 0, selectedItem > 0 {
                    selectedItem -= 1
                }
            }
    }
    
    var body: some View {
        
        Text(items[selectedItem])
            .padding()
            .frame(width: 200, height: 40)
            .background(Color.orange)
            .animation(.spring())
            .gesture(swipe)
    }
}

struct SwipeGestureExample_Previews: PreviewProvider {
    static var previews: some View {
        SwipeGestureExample()
    }
}
