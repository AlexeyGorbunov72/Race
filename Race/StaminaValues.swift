//
//  StaminaValues.swift
//  Race
//
//  Created by Alexey on 21.10.2020.
//

import Foundation

struct Stamina{
    static let twinkyCamel  = 30.0
    static let speedyCamel  = 10.0
    static let centaur      = 8.0
    static let speedyBoots  = 60.0
    static func getStaminaValue(for type: Machines) -> Double{
        var stamina = -1.0
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
        return stamina
    }
}
