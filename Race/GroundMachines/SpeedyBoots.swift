//
//  SpeedyBoots.swift
//  Race
//
//  Created by Alexey on 22.10.2020.
//

import Foundation
class SpeedyBoots: GroundRaceMachine, Raceble{
    init(name: String) {
        super.init(velocity: 6, name: name, restList: [10, 5], stamina: 60.0)
    }
    
    required init(velocity: Double, name: String, restList: [Double], stamina: Double) {
        fatalError("init(velocity:name:restList:stamina:) has not been implemented")
    }
    
}


