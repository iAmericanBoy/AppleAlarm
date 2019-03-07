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
    
    var time: String {
        get {
            
            let dateFormatter = DateFormatter()
            dateFormatter.timeZone = timeZone
            dateFormatter.timeStyle = .short

            return dateFormatter.string(from: Date())
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
