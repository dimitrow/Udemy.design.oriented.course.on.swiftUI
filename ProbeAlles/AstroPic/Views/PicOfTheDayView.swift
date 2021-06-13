//
//  PicOfTheDayView.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 13.06.21.
//

import SwiftUI

struct PicOfTheDayView: View {
    
    @ObservedObject var manager = NetworkManager()
    
    var body: some View {
        
        VStack {
            
            if !manager.loadingDataInProgress {
                
                if let _ = manager.photoInfo.url {
                    
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

struct PicOfTheDayView_Previews: PreviewProvider {
    static var previews: some View {
        
        let preview = PicOfTheDayView()
        preview.manager.photoInfo = PhotoInfo.defaults()
        return preview
        
    }
}
