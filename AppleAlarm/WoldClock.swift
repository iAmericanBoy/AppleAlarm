//
//  WoldClock.swift
//  AppleAlarm
//
//  Created by Dominic Lanzillotta on 3/7/19.
//  Copyright © 2019 Dominic Lanzillotta. All rights reserved.
//

import Foundation

class WorldClock {
    let placeName: String
    let timeZone: TimeZone
    
    var time: Date {
        get {
            let dateComponents = Calendar.current.dateComponents(in: timeZone, from: Date())
            return Calendar.current.date(from: dateComponents)!
        }
    }
    var timeChangeDescribtion: String {
        get {
            return timeZone.abbreviation()!
        }
    }
    
    init(placeName: String, timeZone: TimeZone) {
        self.placeName = placeName
        self.timeZone = timeZone
    }
}
