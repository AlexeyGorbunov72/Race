//
//  TwinkyCamel.swift
//  Race
//
//  Created by Alexey on 22.10.2020.
//

import Foundation
class TwinkyCamel: GroundMachine, Raceble {
    init(name: String) {
        super.init(velocity: 10, name: name, restList: [5, 8], stamina: 30.0)
    }
    
    required init(velocity: Double, name: String, restList: [Double], stamina: Double) {
        fatalError("init(velocity:name:restList:stamina:) has not been implemented")
    }
    
}

