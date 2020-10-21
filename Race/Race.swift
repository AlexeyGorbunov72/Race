//
//  Race.swift
//  Race
//
//  Created by Alexey on 21.10.2020.
//

import Foundation

class Race{
    var participants: [Raceble] = []
    func appendParticipant(raceMachine: Raceble){
        participants.append(raceMachine)
    }
    func startRace(distance: Double) -> [(name: String, uid: Int)]{
        var times: [(time: Double, participant: Raceble)] = []
        for participant in participants{
            times.append(
                (time: participant.moveTo(distance: distance),
                participant: participant)
            )
        }
        
        let minTime = times.min(by: { $0.time < $1.time })?.time
        var vinnersToReturn: [(name: String, uid: Int)] = []
        for vinner in times.filter({ $0.time == minTime }) {
            vinnersToReturn.append(vinner.participant.getUIDAndName())
        }
        return vinnersToReturn
    }
    func chillParticipants(){
        for participant in participants{
            participant.prepareToRace()
        }
    }
}
