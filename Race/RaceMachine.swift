//
//  RaceMachine.swift
//  Race
//
//  Created by Alexey on 17.10.2020.
//

import Foundation
class RaceMachine{
    var velocity: Double
    var ownUID = 0
    var name = ""
    private static var globalUIDCounter = -1
    private func setUpUID(){
        RaceMachine.globalUIDCounter += 1
        ownUID = RaceMachine.globalUIDCounter
    }
    init(velocity: Double, name: String){
        self.name = name
        self.velocity = velocity
        setUpUID()
    }
}
