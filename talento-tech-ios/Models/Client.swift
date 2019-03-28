//
//  Client.swift
//  talento-tech-ios
//
//  Created by iOSDeveloper on 3/26/19.
//  Copyright © 2019 Cmpv. All rights reserved.
//

import UIKit

struct Client: Codable {
    var name:String?
    var lastName:String?
    var age:String?
    var birthDate:String?
    
    init() { }
    
    init(name: String?, lastName: String?, age: String?, birhtDate: String?) {
        self.name = name
        self.lastName = lastName
        self.age = age
        self.birthDate = birhtDate
    }
}
