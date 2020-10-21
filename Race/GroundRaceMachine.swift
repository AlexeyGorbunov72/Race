//
//  GroundRaceMachine.swift
//  Race
//
//  Created by Alexey on 17.10.2020.
//

import Foundation
class GroundRaceMachine: RaceMachine{
    private var counterRest = -1
    private var stamina = 0.0
    override init(type: Machines, name: String) {
        super.init(type: type, name: name)
        switch type {
        case .twinkyCamel:
            stamina = Stamina.twinkyCamel
            break
        case .speedyCamel:
            stamina = Stamina.speedyCamel
            break
        case .speedyBoots:
            stamina = Stamina.speedyBoots
            break
        case .centaur:
            stamina = Stamina.centaur
            break
        default:
            break // error
        }
    }
    private func rest() -> Double{
        counterRest += 1
        return RestDuration.getRestDuration(for: self.type!, iteration: counterRest)
    }
}

extension GroundRaceMachine: Raceble{
    func getUIDAndName() -> (uid: Int, name: String) {
        return (uid: self.ownUID, name: self.name)
    }
    
    func prepareToRace() {
        counterRest = -1
    }
    func moveTo(distance: Double) -> Double {
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
