//
//  Answer.swift
//  PersonalityQuiz_swift
//
//  Created by Apple Device 9 on 11/8/19.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit

struct Answer {
    var text: String
    var type: Type
}

enum Type {
    case resultado1
    case resultado2
    case resultado3
    case resultado4
    
    var result: String {
        switch self {
        case .resultado1:
            return "The Doors"
        case .resultado2:
            return "The Beatles"
        case .resultado3:
            return "The 5.6.7.8's"
        case .resultado4:
            return "Pearl Jam"
        }
    }
    var definition: String {
        switch self {
        case .resultado1:
            return "You're strange, but undeniably awesome and profound."
        case .resultado2:
            return "Everyone loves you. You're perfect. Creative, smart, edgy."
        case .resultado3:
            return "Original, open minded, eclectic"
        case .resultado4:
            return "You don't back down and aren't afraid of what people think of you."
        }
    }
    var image: UIImage {
        switch self {
        case .resultado1:
            let image1 : UIImage = UIImage(named: "The-Doors.jpg")!
            return image1
        case .resultado2:
            let image2 : UIImage = UIImage(named: "The-Beatles.jpeg")!
            return image2
        case .resultado3:
            let image3 : UIImage = UIImage(named: "the-5678-high.jpg")!
            return image3
        case .resultado4:
            let image4 : UIImage = UIImage(named: "pearl-jam-nuevo-disco.jpg")!
            return image4
        }
    }
}





