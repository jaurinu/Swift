//
//  PhotoInfo.swift
//  IMAGEWEEK9
//
//  Created by Apple Device 9 on 11/23/19.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation


struct PhotoInfo: Codable {
    var date: String
    var explanation: String
    var title: String
    var url: URL
}

extension URL {
    func withQueries(_ queries: [String:String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map{
            URLQueryItem(name: $0.0, value: $0.1)
        }
        return components?.url
    }
}
