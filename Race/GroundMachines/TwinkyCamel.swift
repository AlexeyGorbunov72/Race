//
//  Camel.swift
//  Race
//
//  Created by Alexey on 17.10.2020.
//

import Foundation
class TwinkyCamel: GroundRaceMachine, Raceble{
    
    func moveTo(distance: Double) -> Double {
        return 10.0
    }
    init() {
        super.init(velocity: Velocitys.twinkyCamel)
    }
    
}
