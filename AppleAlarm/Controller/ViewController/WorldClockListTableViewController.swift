//
//  WorldClockListTableViewController.swift
//  AppleAlarm
//
//  Created by Dominic Lanzillotta on 3/7/19.
//  Copyright © 2019 Dominic Lanzillotta. All rights reserved.
//

import UIKit

class WorldClockListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return WorldClockController.shared.allWorldClocks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "placeCell", for: indexPath)

        cell.textLabel?.text = WorldClockController.shared.allWorldClocks[indexPath.row].placeName
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let worldClock = WorldClockController.shared.allWorldClocks[indexPath.row]
        WorldClockController.shared.selectedWorldClock.append(worldClock)
        WorldClockController.shared.allWorldClocks.remove(at: indexPath.row)
        self.navigationController?.popViewController(animated: true)
    }
}
