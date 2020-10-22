//
//  SpeedyBoots.swift
//  Race
//
//  Created by Alexey on 22.10.2020.
//

import Foundation
class SpeedyBoots: GroundRaceMachine{
    init(name: String) {
        super.init(velocity: 6, name: name, restList: [10, 5], stamina: 60.0)
    }
    
    required init(velocity: Double, name: String, restList: [Double], stamina: Double) {
        fatalError("init(velocity:name:restList:stamina:) has not been implemented")
    }
    
}
extension SpeedyBoots: Raceble{
    
    
    func getUIDAndName() -> (uid: Int, name: String) {
        return (uid: self.ownUID, name: self.name)
    }
    
    func prepareToRace() {
        counterRest = -1
    }
    func moveTo(distance: Double) throws -> Double {
        if distance < 0 {
            throw RaceErrors.neganiveDistance
        }
        var time = 0.0
        var doneDistance = 0.0
        while doneDistance + velocity * stamina < distance {
            doneDistance += stamina * velocity
            time += rest()
            time += stamina
        }
        time += (distance - doneDistance) / velocity
        return time
    }
}

