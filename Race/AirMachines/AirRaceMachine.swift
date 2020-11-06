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
        fatalError("distanceReducerFunction::Must Override")
    }
    override init(velocity: Double, name: String) {
        super.init(velocity: velocity, name: name)
        
    }
    override func prepareToRace() {
        doneDistance = -1.0
    }
    override func moveTo(distance: Double) throws -> Double {
        if distance < 0 {
            throw RaceErrors.neganiveDistance
        }
        if doneDistance < 0{
            doneDistance += distance
            return (distance * distanceReducerFunction(distance: distance)) / velocity
        }
        doneDistance += distance
        return (distance * distanceReducerFunction(distance: doneDistance)) / velocity
    }
}

protocol ToBeRaceMachine{
    func distanceReducerFunction(distance: Double) -> Double
}
