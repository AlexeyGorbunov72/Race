//
//  FlyCarpet.swift
//  Race
//
//  Created by Alexey on 22.10.2020.
//

import Foundation
class FlyCarpet: AirMachine{
    override func distanceReducerFunction(distance: Double) -> Double {
        if distance < 1_000{
            return 1 - 0.0
        } else if distance < 5_000{
            return 1 - 0.03
        } else if distance < 10_000{
            return 1 - 0.1
        }
        
        return 1 - 0.05
    }
    required init(name: String) {
        super.init(velocity: 10, name: name)
    }
}

