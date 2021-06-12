//
//  PickerExample.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 11.06.21.
//

import SwiftUI

struct PickerExample: View {
    
    @State private var selectedItem: String = ""
    @State private var selectedFarbe: Kartenfarbe = .pik
    
    let pickerValues = ["🏴‍☠️", "💀", "☠️", "🤦🏻‍♂️", "🤗"]
    
    var body: some View {
        VStack {
            
            Text("Picker")
            Picker(selection: $selectedItem, label: Text("Emoji Picker")) {
                ForEach(pickerValues, id: \.self) { item in
                    Text(item)
                }
            }
            .frame(width: 200, height: 100)
            .border(Color.blue)
            .clipped()

            Text("selection: \(selectedItem)")
            
            Picker(selection: $selectedFarbe, label: Text("Emoji Picker")) {
                ForEach(Kartenfarbe.allCases, id: \.self) { item in
                    Text(item.rawValue)
                }
            }
            
            Text("selection: \(selectedFarbe.rawValue)")
            
            Picker(selection: $selectedFarbe, label: Text("Emoji Picker")) {
                ForEach(Kartenfarbe.allCases, id: \.self) { item in
                    Text(item.rawValue)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text("selection: \(selectedFarbe.rawValue)")
        }
        
    }
}

struct PickerExample_Previews: PreviewProvider {
    static var previews: some View {
        PickerExample()
    }
}

enum Kartenfarbe: String, CaseIterable {
    
    case pik = "♠️"
    case kreuz = "♣️"
    case herz = "♥️"
    case karo = "♦️"
}
