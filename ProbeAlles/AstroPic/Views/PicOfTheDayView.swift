//
//  PicOfTheDayView.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 13.06.21.
//

import SwiftUI

struct PicOfTheDayView: View {
    
    @ObservedObject var manager = NetworkManager()
    @State private var showDateChange: Bool = false
//    @State private var date = Date()
    
    var body: some View {
        
        VStack {
            
            HStack {
                Spacer()
                Button {
                    showDateChange.toggle()
                } label: {
                    Image(systemName: "calendar")
                    Text("change date")
                }
            }
            .padding(.trailing)
            .popover(isPresented: $showDateChange) {
                
//                DatePicker("Select a day", selection: $date, in: ...Date(), displayedComponents: .date).labelsHidden()
                DateChangeView(manager: manager)
            }
            
            if let image = manager.image {
                
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            }
            
            ScrollView {
                
                VStack {
                    
                    if !manager.loadingDataInProgress {
                        
                        if let _ = manager.photoInfo.url {
                            
                            Text(manager.photoInfo.date).frame(alignment: .leading)
                            Text(manager.photoInfo.title)
                                .font(.headline)
                            Text(manager.photoInfo.description)
                                .font(.body)
                        } else {
                            
                            Text(PhotoInfo.defaults().title)
                                .font(.headline)
                            Text(PhotoInfo.defaults().description)
                                .font(.body)
                        }
                    } else {
                        
                        Text("Fetching data, please wait")
                            .font(.headline)
                    }
                }
                .padding()
            }
            
        }
        
        
    }
}

struct PicOfTheDayView_Previews: PreviewProvider {
    static var previews: some View {
        
        let preview = PicOfTheDayView()
        preview.manager.photoInfo = PhotoInfo.defaults()
        return preview
        
    }
}
