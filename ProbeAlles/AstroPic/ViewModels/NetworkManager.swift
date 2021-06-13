//
//  NetworkManager.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 13.06.21.
//

import Foundation
import Combine
import UIKit

class NetworkManager: ObservableObject {
    
    @Published var photoInfo = PhotoInfo()
    @Published var image: UIImage? = nil
    
    @Published var loadingDataInProgress = true
    
    private var subscriptions = Set<AnyCancellable>()
    
    init() {
        
        if let url = URL(string: Constants.baseURL) {
            
            guard let fullURL = url.withQuery(["api_key" : Constants.apiKey]) else { return }
            
            URLSession.shared.dataTaskPublisher(for: fullURL)
                .map(\.data)
                .decode(type: PhotoInfo.self, decoder: JSONDecoder())
                .catch { [self] _ in
                    
                    Just(photoInfo)
                }
                .handleEvents(receiveCompletion: { [self] _ in
                    
                    setDataLoadingState()
                })
                .receive(on: RunLoop.main)
                .assign(to: \.photoInfo, on: self)
                .store(in: &subscriptions)
                

        }
    }
    
    private func setDataLoadingState() {
        
        DispatchQueue.main.async { [self] in
            
            loadingDataInProgress = false
        }
    }
}
