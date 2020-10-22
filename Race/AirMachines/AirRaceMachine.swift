//
//  AirRaceMachine.swift
//  Race
//
//  Created by Alexey on 17.10.2020.
//

import Foundation
class AirRaceMachine: RaceMachine{
    var doneDistance = -1.0
    func distanceReducerFunction(distance: Double) -> Double{
        return -1
    }
    override init(velocity: Double, name: String) {
        super.init(velocity: velocity, name: name)
        
    }
}

