//
//  Race.swift
//  Race
//
//  Created by Alexey on 21.10.2020.
//

import Foundation

class Race{
    var participants: [Raceble] = []
    private var type: TypeRaces
    init(type: TypeRaces) {
        self.type = type
    }
    func appendParticipant(raceMachine: Raceble) throws{
        try validate(participant: raceMachine)
        
        participants.append(raceMachine)
    }
    
    func appendParticipants(raceMachine: Raceble...) throws {
        for participant in raceMachine{
            try appendParticipant(raceMachine: participant)
        }
    }
    
    func appendParticipants(raceMachine: [Raceble]) throws {
        for participant in raceMachine{
            try appendParticipant(raceMachine: participant)
        }
    }
    
    func startRace(distance: Double) throws  -> [(time: Double, participant: Raceble)]{
        
        var times: [(time: Double, participant: Raceble)] = []
        for participant in participants{
            
            times.append(
                (time: try participant.moveTo(distance: distance),
                participant: participant)
            )
        }
        
        let minTime = times.min(by: { $0.time < $1.time })?.time
        if times.filter({$0.time < 0}).count > 0{
            showHowking()
        }
        return  times.filter({ $0.time == minTime })
    }
    func chillParticipants(){
        for participant in participants{
            participant.prepareToRace()
        }
    }
    private func validate(participant: Raceble) throws {
        switch type {
        case .groundOnly:
            if (participant as? AirRaceMachine) != nil{
                throw RaceErrors.invalidParticipant
            }
            break
        case .airOnly:
            if (participant as? GroundRaceMachine) != nil{
                throw RaceErrors.invalidParticipant
            }
        case .free:
            break
        }
    }
    private func showHowking(){
        let script = "~/howking.sh"
        let task = Process()
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", script]
        task.launch()
    }
}
