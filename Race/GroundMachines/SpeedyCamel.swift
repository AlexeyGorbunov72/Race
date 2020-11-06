//
//  SpeedyCamel.swift
//  Race
//
//  Created by Alexey on 22.10.2020.
//

import Foundation
class SpeedyCamel: GroundMachine{
    init(name: String) {
        super.init(velocity: 40, name: name, restList: [5, 6.5, 8], stamina: 10.0)
    }
    
    required init(velocity: Double, name: String, restList: [Double], stamina: Double) {
        fatalError("init(velocity:name:restList:stamina:) has not been implemented")
    }
    
}

