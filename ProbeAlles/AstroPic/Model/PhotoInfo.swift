//
//  PhotoInfo.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 13.06.21.
//

import Foundation

struct PhotoInfo: Codable {
    
    var copyright: String
    var date: String
    var description: String
    var mediaType: String
    var title: String
    var url: URL?
    
    enum CodingKeys: String, CodingKey {
        
        case copyright
        case date
        case description = "explanation"
        case mediaType = "media_type"
        case title
        case url
    }
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        copyright = try container.decode(String.self, forKey: CodingKeys.copyright)
        date = try container.decode(String.self, forKey: CodingKeys.date)
        description = try container.decode(String.self, forKey: CodingKeys.description)
        mediaType = try container.decode(String.self, forKey: CodingKeys.mediaType)
        title = try container.decode(String.self, forKey: CodingKeys.title)
        url = try? container.decode(URL.self, forKey: CodingKeys.url)
    }
    
    init() {
        
        copyright = ""
        date = ""
        description = ""
        mediaType = ""
        title = ""
    }
    
    static func defaults() -> PhotoInfo {
        
        var photoInfo = PhotoInfo()
        photoInfo.title = "Sorry, there's no image for this day"
        photoInfo.description = "Please try another date"
        
        return photoInfo
    }
}

