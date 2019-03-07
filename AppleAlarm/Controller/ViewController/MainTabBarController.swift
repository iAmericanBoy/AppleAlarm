//
//  MainTabBarController.swift
//  AppleAlarm
//
//  Created by Dominic Lanzillotta on 3/7/19.
//  Copyright © 2019 Dominic Lanzillotta. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.items?[0].title = "World Clock"
        self.tabBar.items?[1].title = "Alarm"
        self.tabBar.items?[2].title = "Bedtime"
        self.tabBar.items?[3].title = "Stopwatch"
        self.tabBar.items?[4].title = "Timer"
    }
}
