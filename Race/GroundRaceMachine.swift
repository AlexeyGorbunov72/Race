//
//  GroundRaceMachine.swift
//  Race
//
//  Created by Alexey on 17.10.2020.
//

import Foundation
class GroundRaceMachine: RaceMachine, Raceble{
    private var counterRest = 0
    func moveTo(distance: Double) -> Double {
        return 10.0
    }
    
    override init(type: Machines) {
        super.init(type: type)
    }
}
