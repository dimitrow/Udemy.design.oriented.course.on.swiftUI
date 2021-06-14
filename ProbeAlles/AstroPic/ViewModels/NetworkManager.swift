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
    
    @Published var date = Date()
    @Published var photoInfo = PhotoInfo()
    @Published var image: UIImage? = nil
    
    @Published var loadingDataInProgress = true
    
    private var subscriptions = Set<AnyCancellable>()
    
    init() {
        
        $date.removeDuplicates()
            .sink { [self] _ in
                
                image = nil
            }
            .store(in: &subscriptions)
        
        $date.removeDuplicates()
            .map { [self] in
                createURL(for: $0)!
            }
            .flatMap { url in
                
                URLSession.shared.dataTaskPublisher(for: url)
                    .map(\.data)
                    .decode(type: PhotoInfo.self, decoder: JSONDecoder())
                    .catch { [self] _ in
                        
                        Just(photoInfo)
                    }
                    .handleEvents(receiveCompletion: { [self] _ in

                        setDataLoadingState()
                    })
            }
            .receive(on: RunLoop.main)
            .assign(to: \.photoInfo, on: self)
            .store(in: &subscriptions)
        
        $photoInfo
            .filter { $0.url != nil }
            .map { photoInfo -> URL in
                
                return photoInfo.url!
            }
            .flatMap { url in
                
                URLSession.shared.dataTaskPublisher(for: url)
                    .map(\.data)
                    .catch { _ in
                        
                        return Just(Data())
                    }
            }.map({ out -> UIImage? in
                
                UIImage(data: out)
            })
            .receive(on: RunLoop.main)
            .assign(to: \.image, on: self)
            .store(in: &subscriptions)
        
//        if let url = URL(string: Constants.baseURL) {
//
//            guard let fullURL = url.withQuery(["api_key" : Constants.apiKey]) else { return }
//
//
//            URLSession.shared.dataTaskPublisher(for: fullURL)
//                .map(\.data)
//                .decode(type: PhotoInfo.self, decoder: JSONDecoder())
//                .catch { [self] _ in
//
//                    Just(photoInfo)
//                }
//                .handleEvents(receiveCompletion: { [self] _ in
//
//                    setDataLoadingState()
//                })
//                .receive(on: RunLoop.main)
//                .assign(to: \.photoInfo, on: self)
//                .store(in: &subscriptions)
//
//
//            $photoInfo
//                .filter { $0.url != nil }
//                .map { photoInfo -> URL in
//
//                    return photoInfo.url!
//                }
//                .flatMap { url in
//
//                    URLSession.shared.dataTaskPublisher(for: url)
//                        .map(\.data)
//                        .catch { _ in
//
//                            return Just(Data())
//                        }
//                }.map({ out -> UIImage? in
//
//                    UIImage(data: out)
//                })
//                .receive(on: RunLoop.main)
//                .assign(to: \.image, on: self)
//                .store(in: &subscriptions)
//
//        }
    }
    
    private func setDataLoadingState() {
        
        DispatchQueue.main.async { [self] in
            
            loadingDataInProgress = false
        }
    }
    
    func createURL(for date: Date) -> URL? {
        
        if let url = URL(string: Constants.baseURL) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            let dateString = dateFormatter.string(from: date)
            
            guard let fullURL = url.withQuery(["api_key" : Constants.apiKey,
                                               "date" : dateString]) else { return nil}
            
            
            
            return fullURL
        }
        return nil
        
    }
}
