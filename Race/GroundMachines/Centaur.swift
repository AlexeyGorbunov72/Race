//
//  Centaur.swift
//  Race
//
//  Created by Alexey on 22.10.2020.
//

import Foundation

class Centaur: GroundMachine{
    init(name: String) {
        super.init(velocity: 15, name: name, restList: [2], stamina: 8.0)
    }
    
    required init(velocity: Double, name: String, restList: [Double], stamina: Double) {
        fatalError("init(velocity:name:restList:stamina:) has not been implemented")
    }
    
}


