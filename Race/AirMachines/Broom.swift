//
//  Broom.swift
//  Race
//
//  Created by Alexey on 22.10.2020.
//

import Foundation
class Broom: AirRaceMachine, Raceble{
    override func distanceReducerFunction(distance: Double) -> Double {
        let n = (distance / 1000).rounded(.down)
        return (distance - n * (n - 1) / 2) / distance
    }
    required init(name: String) {
        super.init(velocity: 20, name: name)
    }
}
