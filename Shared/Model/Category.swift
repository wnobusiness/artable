//
//  Category.swift
//  Artable
//
//  Created by Krishna Torrence on 8/8/19.
//  Copyright © 2019 Krishna Torrence. All rights reserved.
//

import Foundation
import FirebaseFirestore

struct Category {
    var name: String
    var id: String
    var imgUrl: String
    var isActive: Bool = true
    var timeStamp: Timestamp
}
