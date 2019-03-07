//
//  WorldClockTableViewCell.swift
//  AppleAlarm
//
//  Created by Dominic Lanzillotta on 3/7/19.
//  Copyright © 2019 Dominic Lanzillotta. All rights reserved.
//

import UIKit

class WorldClockTableViewCell: UITableViewCell {
    //MARK: - Outlets
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timeChangeLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    
    //MARK: - Properties
    var worldClock: WorldClock? {
        didSet {
            updateViews()
        }
    }
    
    //MARK: - Private Functions
    func updateViews() {
        guard let worldClock = worldClock else {return}
        placeLabel.text = worldClock.placeName
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        
        timeLabel.text = dateFormatter.string(from:worldClock.time)
        
        print(worldClock.timeChangeDescribtion)
        timeChangeLabel.text = worldClock.timeChangeDescribtion
    }
}
