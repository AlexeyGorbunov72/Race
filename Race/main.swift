//
//  main.swift
//  Race
//
//  Created by Alexey on 17.10.2020.
//

import Foundation

var fuck = GroundRaceMachine(type: .speedyCamel, name: "fuck") as Raceble
var shit = GroundRaceMachine(type: .centaur, name: "fuckU") as Raceble

let race = Race()
race.appendParticipant(raceMachine: fuck)
race.appendParticipant(raceMachine: shit)
print(race.startRace(distance: 1000))

