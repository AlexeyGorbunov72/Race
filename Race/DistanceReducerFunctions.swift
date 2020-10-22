//
//  DistanceReducerFunctions.swift
//  Race
//
//  Created by Alexey on 21.10.2020.
//

import Foundation

struct DistanceReducers{
    static func flyCarpetReducer(distance: Double) -> Double{
        if distance < 1_000{
            return 1 - 0.0
        } else if distance < 5_000{
            return 1 - 0.03
        } else if distance < 10_000{
            return 1 - 0.1
        } else {
            return 1 - 0.05
        }
    }
    static func mortarReducer(distance: Double) -> Double{
        return 1 - 0.06
    }
    static func broomReducer(distance: Double) -> Double{
        let n = (distance / 1000).rounded(.down)
        return (distance - n * (n - 1) / 2) / distance
    }
    static func getReducer(type: Machines) -> ((Double) -> Double){
        var distanceReducerFunction: ((Double) -> Double)?
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
        return distanceReducerFunction!
    }
}
