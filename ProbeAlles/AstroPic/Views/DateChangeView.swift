//
//  DateChangeView.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 14.06.21.
//

import SwiftUI

struct DateChangeView: View {
    
    @State private var choosenDate = Date()
    @ObservedObject var manager: NetworkManager
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        
        VStack {
            
            Text("Select a day")
            DatePicker("Select a day", selection: $choosenDate, in: ...Date(), displayedComponents: .date).labelsHidden()
            
            Button {
                
                manager.date = choosenDate
                presentation.wrappedValue.dismiss()
            } label: {
                Text("done")
            }

        }
    }
}

struct DateChangeView_Previews: PreviewProvider {
    static var previews: some View {
        DateChangeView(manager: NetworkManager())
    }
}
