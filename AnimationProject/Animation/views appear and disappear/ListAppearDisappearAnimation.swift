//
//  ListAppearDisappearAnimation.swift
//  AnimationProject
//
//  Created by Gene Dimitrow on 03.06.21.
//

import SwiftUI

struct ListAppearDisappearAnimation: View {
    
    @State private var items: [String] = ["Obst", "Milch", "Wurst"]
    @State private var newItem: String = ""
    
    var body: some View {
        
        VStack {
            
            Text("Shopping list")
                .font(.headline)
            HStack(alignment: .firstTextBaseline, spacing: 20) {
                
                TextField("new item", text: $newItem)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    
                    if newItem.count > 0 {
                        
                        withAnimation(Animation.easeIn(duration: 0.9)) {
                            
                            items.append(newItem)
                        }
                    }
                    
                    newItem = ""
                    
                }, label: {
                    Text("Add")
                })
                
            }
            .padding()
            
            //MARK: - this one uses some default list animation
            
//            List(items, id: \.self) { item in
//
//                Text(item).transition(.scale)
//
//            }
            
            ScrollView {
                
                ForEach(items, id: \.self) { item in
                    
                    VStack(alignment: .leading) {
                        
                        Text(item)
                            .frame(maxWidth: .infinity, maxHeight: 44.0, alignment: .leading)
                        Divider()
                    }
                    .transition(.slide)
                }
                .padding()
                
            }
            
        }
    }
}

struct AnimationTimingModifications_Previews: PreviewProvider {
    static var previews: some View {
        ListAppearDisappearAnimation()
    }
}
