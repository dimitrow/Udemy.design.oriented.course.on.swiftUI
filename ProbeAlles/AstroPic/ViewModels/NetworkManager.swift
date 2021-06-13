//
//  NetworkManager.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 13.06.21.
//

import Foundation
import Combine

class NetworkManager: ObservableObject {
    
    @Published var photoInfo = PhotoInfo()
    @Published var loadingDataInProgress = true
    
    private var subscriptions = Set<AnyCancellable>()
    
    init() {
        
        if let url = URL(string: Constants.baseURL) {
            
            guard let fullURL = url.withQuery(["api_key" : Constants.apiKey]) else { return }
            
            URLSession.shared.dataTaskPublisher(for: fullURL)
                .handleEvents(receiveCompletion: { [self] _ in
                    
                    loadingDataInProgress = false
                })
                .receive(on: RunLoop.main)
                .map(\.data)
                .decode(type: PhotoInfo.self, decoder: JSONDecoder())
                .catch { [self] _ in
                    
                    Just(photoInfo)
                }
                .receive(on: RunLoop.main)
                .assign(to: \.photoInfo, on: self)
                .store(in: &subscriptions)
                
                
//                .sink(receiveCompletion: {completion in
//                    switch completion {
//
//                    case .finished:
//                        print("fetch completed")
//                        break
//                    case .failure(let failure):
//                        print("fetch completed with failure: \(failure.localizedDescription)")
//                        break
//                    }
//                }, receiveValue: { data, response  in
//
//                    if let description = String(data: data, encoding: .utf8) {
//
//                        print(description)
//                    }
//                })
        }
    }
}
