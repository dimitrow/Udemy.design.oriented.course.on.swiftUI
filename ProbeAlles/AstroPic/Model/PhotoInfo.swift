//
//  PhotoInfo.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 13.06.21.
//

import Foundation

struct PhotoInfo: Codable {
    
    var copyright: String?
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
    
//    init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        copyright = try container.decode(String.self, forKey: CodingKeys.copyright)
//        date = try container.decode(String.self, forKey: CodingKeys.date)
//        description = try container.decode(String.self, forKey: CodingKeys.description)
//        mediaType = try container.decode(String.self, forKey: CodingKeys.mediaType)
//        title = try container.decode(String.self, forKey: CodingKeys.title)
//        url = try? container.decode(URL.self, forKey: CodingKeys.url)
//    }
    
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

/*
{
    "date":"2021-06-14",
    "explanation":"What does the largest moon in the Solar System look like?  Jupiter's moon Ganymede, larger than even Mercury and Pluto, has an icy surface speckled with bright young craters overlying a mixture of older, darker, more cratered terrain laced with grooves and ridges.  The cause of the grooved terrain remains a topic of research, with a leading hypothesis relating it to shifting ice plates.  Ganymede is thought to have an ocean layer that contains more water than Earth -- and might contain life.  Like Earth's Moon, Ganymede keeps the same face towards its central planet, in this case Jupiter.  The featured image was captured last week by NASA's robotic Juno spacecraft as it passed only about 1000 kilometers above the immense moon.  The close pass reduced Juno's orbital period around Jupiter from 53 days to 43 days.  Juno continues to study the giant planet's high gravity, unusual magnetic field, and complex cloud structures.    Last week's solar eclipse: Notable images submitted to APOD",
    "hdurl":"https://apod.nasa.gov/apod/image/2106/Ganymede_JunoGill_2217.jpg",
    "media_type":"image",
    "service_version":"v1",
    "title":"Ganymede from Juno",
    "url":"https://apod.nasa.gov/apod/image/2106/Ganymede_JunoGill_960.jpg"
    
}


{
    "copyright":"Mike Olbinski Music: Incompetech",
    "date":"2021-06-13",
    "explanation":"Is that a cloud or an alien spaceship?  It's an unusual and sometimes dangerous type of thunderstorm cloud called a supercell. Supercells may spawn damaging tornados, hail, downbursts of air, or drenching rain.  Or they may just look impressive. A supercell harbors a mesocyclone -- a rising column of air surrounded by drafts of falling air.  Supercells could occur over many places on Earth but are particularly common in  Tornado Alley of the USA. Featured here are four time-lapse sequences of a supercell in 2013 rotating above and moving across Booker, Texas.  Captured in the video are new clouds forming near the storm center, dust swirling on the ground, lightning flashing in the upper clouds, all while the impressively sculptured complex rotates ominously.  Finally, after a few hours, as shown in the final sequence, dense rain falls as the storm begins to die out.   Notable images submitted to APOD: Last week's solar eclipse",
    "media_type":"video",
    "service_version":"v1",
    "title":"A Supercell Thunderstorm Over Texas",
    "url":"https://player.vimeo.com/video/67995158?title=0&portrait=0"
    
}

*/
