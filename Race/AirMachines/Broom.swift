//
//  Broom.swift
//  Race
//
//  Created by Alexey on 22.10.2020.
//

import Foundation
class Broom: AirRaceMachine{
    override func distanceReducerFunction(distance: Double) -> Double {
        let n = (distance / 1000).rounded(.down)
        return (distance - n * (n - 1) / 2) / distance
    }
    required init(name: String) {
        super.init(velocity: 20, name: name)
    }
}

extension Broom: Raceble{
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

