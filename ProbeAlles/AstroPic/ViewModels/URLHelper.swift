//
//  URLHelper.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 13.06.21.
//

import Foundation

extension URL {
    
    func withQuery(_ query: [String: String]) -> URL? {
        
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = query.map { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}
