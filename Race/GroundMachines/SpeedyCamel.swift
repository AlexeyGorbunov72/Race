//
//  SpeedyCamel.swift
//  Race
//
//  Created by Alexey on 22.10.2020.
//

import Foundation
class SpeedyCamel: GroundRaceMachine{
    init(name: String) {
        super.init(velocity: 40, name: name, restList: [5, 6.5, 8], stamina: 10.0)
    }
    
    required init(velocity: Double, name: String, restList: [Double], stamina: Double) {
        fatalError("init(velocity:name:restList:stamina:) has not been implemented")
    }
    
}
extension SpeedyCamel: Raceble{
    
    
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

