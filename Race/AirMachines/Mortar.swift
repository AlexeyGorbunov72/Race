//
//  Mortar.swift
//  Race
//
//  Created by Alexey on 22.10.2020.
//

import Foundation
class Mortar: AirMachine, Raceble{
    override func distanceReducerFunction(distance: Double) -> Double {
        return 1 - 0.06
    }
    required init(name: String) {
        super.init(velocity: 8, name: name)
    }
}
