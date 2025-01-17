//
//  Raceble.swift
//  Race
//
//  Created by Alexey on 17.10.2020.
//

import Foundation
protocol Raceble {
    func moveTo(distance: Double) throws -> Double // return time
    func prepareToRace()
    func getUIDAndName() -> (uid: Int, name: String)
}
