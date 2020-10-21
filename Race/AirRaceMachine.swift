//
//  AirRaceMachine.swift
//  Race
//
//  Created by Alexey on 17.10.2020.
//

import Foundation
class AirRaceMachine: RaceMachine{
    private var distanceReducerFunction: ((Double) -> Double)?
    private var doneDistance = -1.0
    override init(type: Machines, name: String) {
        super.init(type: type, name: name)
        switch type {
        case .flyCarpet:
            distanceReducerFunction = DistanceReducers.flyCarpetReducer
            break
        case .mortar:
            distanceReducerFunction = DistanceReducers.mortarReducer
            break
        case .broom:
            distanceReducerFunction = DistanceReducers.broomReducer
            break
       
        default:
            break // error
        }
    }
}

extension AirRaceMachine: Raceble{
    func getUIDAndName() -> (uid: Int, name: String) {
        return (uid: self.ownUID, name: self.name)
    }
    
    func moveTo(distance: Double) -> Double {
        if distance < 0{
           // throw fuck!
        }
        if doneDistance < 0{
            doneDistance += distance
            return (distance * distanceReducerFunction!(distance)) / velocity
        }
        doneDistance += distance
        return (distance * distanceReducerFunction!(doneDistance)) / velocity
        
    }
    
    func prepareToRace() {
        doneDistance = -1
    }
    
    
}
