//
//  GroundRaceMachine.swift
//  Race
//
//  Created by Alexey on 17.10.2020.
//

import Foundation
class GroundRaceMachine: RaceMachine{
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
    
    
}


