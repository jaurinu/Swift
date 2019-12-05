//
//  PhotoInfoNetworkController.swift
//  IMAGEWEEK9
//
//  Created by Apple Device 9 on 11/23/19.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation

struct PhotoInfoNetworkController {
    func fetchPhotoInfo(completionHandler: (PhotoInfo?)) -> Void {
         let baseUrl = URL(string: "")!
        
        func fetchPhotoInfo(completionHandler: @escaping (PhotoInfo?) -> Void) {
            let baseURL = URL(string: "https://api.nasa.gov/planetary/apod")!
            var query: [String:String] = [
                "api_key":"DEMO_KEY"
            ]
            let url = baseURL.withQueries(query)!
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                if let data = data {
                    if let photoInfo = try? decoder.decode(PhotoInfo.self, from: data) {
                        completionHandler(photoInfo)
                    }else {
                        print("JSON Error")
                    }
                }else {
                    print(error?.localizedDescription ?? "JSON Error”)
                }
            }
            task.resume()
        }
        fetchPhotoInfo { (photoInfo) in
            print(photoInfo)
            }
    }
}

