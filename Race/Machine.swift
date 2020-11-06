//
//  RaceMachine.swift
//  Race
//
//  Created by Alexey on 17.10.2020.
//

import Foundation
class Machine: Raceble{
    var velocity: Double
    var ownUID = 0
    var name = ""
    private static var globalUIDCounter = -1
    private func setUpUID(){
        Machine.globalUIDCounter += 1
        ownUID = Machine.globalUIDCounter
    }
    init(velocity: Double, name: String){
        self.name = name
        self.velocity = velocity
        setUpUID()
    }
    func moveTo(distance: Double) throws -> Double{ // return time
        fatalError("moveTo::Must Override")
    }
    func prepareToRace() {
        fatalError("prepareToRace::Must Override")
    }
    func getUIDAndName() -> (uid: Int, name: String) {
        return (uid: self.ownUID, name: self.name)
    }
}
