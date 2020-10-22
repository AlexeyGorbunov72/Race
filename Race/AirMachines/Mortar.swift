//
//  Mortar.swift
//  Race
//
//  Created by Alexey on 22.10.2020.
//

import Foundation
class Mortar: AirRaceMachine{
    override func distanceReducerFunction(distance: Double) -> Double {
        return 1 - 0.06
    }
    required init(name: String) {
        super.init(velocity: 8, name: name)
    }
}

extension Mortar: Raceble{
    func getUIDAndName() -> (uid: Int, name: String) {
        return (uid: self.ownUID, name: self.name)
    }
    
    func moveTo(distance: Double) throws -> Double {
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
    
    func prepareToRace() {
        doneDistance = -1
    }
}

