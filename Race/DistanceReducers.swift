//
//  DistanceReducers.swift
//  Race
//
//  Created by Alexey on 21.10.2020.
//

import Foundation
struct DistanceReducers{
    static let flyCarpet: [(distance: Double, reduce: Double, upper: Bool)] = [
        (distance: 1000, reduce: 0, upper: false),
        (distance: 5000, reduce: 0.03, upper: false),
        (distance: 10_000, reduce: 0.1, upper: false),
        (distance: 10_000, reduce: 0.05, upper: true)]
    static let mortar     = 10.0
    static let broom      = 8.0
    
}
