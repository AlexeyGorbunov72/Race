//
//  RaceMachinesBuilder.swift
//  Race
//
//  Created by Alexey on 22.10.2020.
//

import Foundation
struct RaceMachinesBuilder{
    static func build(type: Machines...) -> [Raceble]{
        var toReturn: [Raceble] = []
        for machine in type{
            switch machine {
            case .twinkyCamel:
                toReturn.append(TwinkyCamel(name: "undefinded"))
            case .speedyCamel:
                toReturn.append(SpeedyCamel(name: "undefinded"))
            case .centaur:
                toReturn.append(Centaur(name: "undefinded"))
            case .speedyBoots:
                toReturn.append(SpeedyBoots(name: "undefinded"))
            case .flyCarpet:
                toReturn.append(FlyCarpet(name: "undefinded"))
            case .mortar:
                toReturn.append(Mortar(name: "undefinded"))
            case .broom:
                toReturn.append(Broom(name: "undefinded"))
            }
        }
        return toReturn
    }
}
