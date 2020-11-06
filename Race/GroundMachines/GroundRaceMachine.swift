//
//  GroundRaceMachine.swift
//  Race
//
//  Created by Alexey on 17.10.2020.
//

import Foundation
class GroundMachine: Machine{
    var counterRest = -1
    var stamina = 0.0
    private var restList: [Double]
    required init(velocity: Double, name: String, restList: [Double], stamina: Double) {
        self.restList = restList
        self.stamina = stamina
        super.init(velocity: velocity, name: name)
    }
    
    func rest() -> Double{
        counterRest += 1
        return getRestDuration(iteration: counterRest)
    }
    
    func getRestDuration(iteration: Int) -> Double{
        if iteration >= restList.count{
            return restList.last!
        }
        return restList[iteration]
    }
    override func prepareToRace(){
        counterRest = -1
    }
    override func moveTo(distance: Double) throws -> Double {
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


