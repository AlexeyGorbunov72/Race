//
//  RaceMachine.swift
//  Race
//
//  Created by Alexey on 17.10.2020.
//

import Foundation
class RaceMachine{
    var velocity: Double
    var type: Machines?
    var ownUID = 0
    var name = ""
    private static var globalUIDCounter = -1
    private func setUpUID(){
        RaceMachine.globalUIDCounter += 1
        ownUID = RaceMachine.globalUIDCounter
    }
    init(type: Machines, name: String){
        self.type = type
        self.name = name
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
        setUpUID()
    }
}
