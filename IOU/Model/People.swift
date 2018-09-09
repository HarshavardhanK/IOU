//
//  People.swift
//  IOU
//
//  Created by Harshavardhan K on 08/09/18.
//  Copyright © 2018 Harshavardhan K. All rights reserved.
//

import Foundation

class People {
    
    var name: String = ""
    var amountYouOweThem: Double = 0.0
    var amountTheyOweYou: Double = 0.0
    
    init(name: String, theyOwe: Double, youOwe: Double) {
        self.name = name
        amountTheyOweYou = theyOwe
        amountYouOweThem = youOwe
    }
}
