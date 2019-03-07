//
//  WorldClockController.swift
//  AppleAlarm
//
//  Created by Dominic Lanzillotta on 3/7/19.
//  Copyright © 2019 Dominic Lanzillotta. All rights reserved.
//

import Foundation
class WorldClockController {
    
    //MARK: - Singleton
    static let shared = WorldClockController()
    
    //MARK: - Source of Truth
    var allWorldClocks: [WorldClock] = []
    
    var selectedWorldClock: [WorldClock] = []
    
    //MARK: - init
    init() {
        let munich = WorldClock(placeName: "Munich", timeZone: TimeZone(identifier: "Europe/Paris")!)
        let chicago = WorldClock(placeName: "Chicago", timeZone: TimeZone(identifier: "America/Chicago")!)
        let dc = WorldClock(placeName: "DC", timeZone: TimeZone(identifier: "America/New_York")!)
        let tokyo = WorldClock(placeName: "Tokyo", timeZone: TimeZone(identifier: "Asia/Tokyo")!)
        allWorldClocks += [munich,chicago,dc,tokyo]
    }
}
