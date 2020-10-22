//
//  FlyCarpet.swift
//  Race
//
//  Created by Alexey on 22.10.2020.
//

import Foundation
class FlyCarpet: AirRaceMachine{
    override func distanceReducerFunction(distance: Double) -> Double {
        if distance < 1_000{
            return 1 - 0.0
        } else if distance < 5_000{
            return 1 - 0.03
        } else if distance < 10_000{
            return 1 - 0.1
        }
        
        return 1 - 0.05
    }
    required init(name: String) {
        super.init(velocity: 10, name: name)
    }
}

extension FlyCarpet: Raceble{
    func getUIDAndName() -> (uid: Int, name: String) {
        return (uid: self.ownUID, name: self.name)
    }
    
    func moveTo(distance: Double) throws -> Double {
        if distance < 0{
            throw RaceErrors.neganiveDistance
        }
        if doneDistance < 0 {
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
