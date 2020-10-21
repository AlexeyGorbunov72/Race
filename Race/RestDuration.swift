//
//  StaminaValues.swift
//  Race
//
//  Created by Alexey on 21.10.2020.
//

import Foundation

struct RestDuration{
    static let twinkyCamel: [Double] = [5, 8]
    static let speedyCamel: [Double] = [5, 6.5, 8]
    static let centaur: [Double]     = [2]
    static let speedyBoots: [Double] = [10, 5]
    static func getRestDuration(for machine: Machines, iteration: Int) -> Double{
        var restlist: [Double] = []
        switch machine {
        case .twinkyCamel:
            restlist = RestDuration.twinkyCamel
            break
        case .speedyCamel:
            restlist = RestDuration.speedyCamel
            break
        case .speedyBoots:
            restlist = RestDuration.speedyBoots
            break
        case .centaur:
            restlist = RestDuration.centaur
            break
        default:
            break // Error!
        }
        if iteration >= restlist.count - 1{
            guard let restDuration = restlist.last else {
                return -1 // delete this
                // throw error
            }
            return restDuration
        } else {
            return restlist[iteration]
        }
    }
}
