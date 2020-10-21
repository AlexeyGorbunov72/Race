//
//  RaceMachine.swift
//  Race
//
//  Created by Alexey on 17.10.2020.
//

import Foundation
class RaceMachine{
    var velocity: Double
    private var type: Machines?
    init(type: Machines){
        self.type = type
        switch type {
        case .twinkyCamel:
            velocity = Velocitys.twinkyCamel
            break
        case .speedyCamel:
            velocity = Velocitys.speedyCamel
            break
        case .centaur:
            velocity = Velocitys.centaur
            break
        case .speedyBoots:
            velocity = Velocitys.speedyBoots
            break
        case .flyCarpet:
            velocity = Velocitys.flyCarpet
            break
        case .mortar:
            velocity = Velocitys.mortar
            break
        case .broom:
            velocity = Velocitys.broom
            break
        }
    }
}
