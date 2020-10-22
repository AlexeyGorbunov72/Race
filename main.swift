//
//  main.swift
//  Race
//
//  Created by Alexey on 17.10.2020.
//

import Foundation
func showBasicFunctional(){
    let p = RaceMachinesBuilder.build(type: .speedyBoots, .speedyCamel, .centaur, .flyCarpet, .broom)
    let race = Race(type: .free)
    do{
        try race.appendParticipants(raceMachine: p)
        print(try race.startRace(distance: 1000))
    } catch RaceErrors.invalidParticipant {
        print("showBasicFunctional::Error ", RaceErrors.invalidParticipant)
    } catch {
        print("showBasicFunctional::Error oops")
    }
    
}

func showFeature(){
    let broom = Broom(name: "awsome broom")
    let speedyCamel = SpeedyCamel(name: "just camel")
    let race = Race(type: .free)
    do{
        try race.appendParticipants(raceMachine: broom, speedyCamel)
    } catch RaceErrors.invalidParticipant {
        print("showBasicFunctional::Error ", RaceErrors.invalidParticipant)
    } catch {
        print("showBasicFunctional::Error oops")
    }
    
    do{
        var winners = try race.startRace(distance: 1000)
        print(winners)
        while (winners[0].participant as? AirRaceMachine) == nil {
            winners = try race.startRace(distance: 1000)
        }
        print(winners)
        race.chillParticipants()
        print(try race.startRace(distance: 1000))
        
    } catch {
        
    }
   
}

func findChampion(distance: Double, participants: [Raceble], data: [(time: Double, participant: Raceble)] = []) -> [(time: Double, participant: Raceble)]{
    
    var goToNext: [Raceble] = []
    var data_: [(time: Double, participant: Raceble)] = []
    do{
        for i in 0..<(participants.count - participants.count % 2) where i % 2 == 0{
            print("#\(participants[i].getUIDAndName().name) VS \(participants[i + 1].getUIDAndName().name)#")
            let race = Race(type: .free)
            try race.appendParticipants(raceMachine: participants[i], participants[i + 1])
            let winners = try race.startRace(distance: distance)
            
        
            winners.forEach {
                print("\t Won: \($0.participant.getUIDAndName().name), time: \($0.time)")
                //$0.participant.prepareToRace()
                goToNext.append($0.participant)
                data_.append($0)
            }
        }
    } catch {
        
    }
    if participants.count % 2 == 1{
        goToNext.append(participants.last!)
    }
    
    if goToNext.count < 2{
        print("\n#End Of Races!#\n")
        return data
    }
    print("\n#NEXT SECTION!#")
    return findChampion(distance: distance, participants: goToNext, data: data_)
}
func showChampionate(){
    let p: [Raceble] = [
        SpeedyCamel(name: "SpeedyCamel"),
        TwinkyCamel(name: "TwinkyCamel"),
        Broom(name: "Broom"),
        SpeedyBoots(name: "SpeedyBoots"),
        Mortar(name: "Mortar"),
        Centaur(name: "Centaur"),
    ]
    print("Winner Data: ", findChampion(distance: 1000000, participants: p))
}

showChampionate()
