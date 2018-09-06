//
//  User.swift
//  IOU
//
//  Created by Harshavardhan K on 17/08/18.
//  Copyright © 2018 Harshavardhan K. All rights reserved.
//

import Foundation

class User {
    
    var name: String
    var email: String
    var tokenID: String
    var userID: String
    
    init(name: String, email: String, tokenID: String, userID: String) {
        self.name = name
        self.email = email
        self.tokenID = tokenID
        self.userID = userID
    }
    
}
