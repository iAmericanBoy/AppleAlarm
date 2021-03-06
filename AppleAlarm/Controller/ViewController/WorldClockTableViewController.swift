//
//  WorldClockTableViewController.swift
//  AppleAlarm
//
//  Created by Dominic Lanzillotta on 3/7/19.
//  Copyright © 2019 Dominic Lanzillotta. All rights reserved.
//

import UIKit

class WorldClockTableViewController: UITableViewController {
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
        self.navigationController?.visibleViewController?.title = "WorldClock"
        self.navigationController?.visibleViewController?.navigationItem.leftBarButtonItem = self.editButtonItem
        self.navigationController?.visibleViewController?.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addWorldClock))

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return WorldClockController.shared.selectedWorldClock.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "worldClockCell", for: indexPath) as? WorldClockTableViewCell
        
        cell?.worldClock = WorldClockController.shared.selectedWorldClock[indexPath.row]
        
        return cell ?? UITableViewCell()
    }

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let worldClock = WorldClockController.shared.selectedWorldClock.remove(at: indexPath.row)
            WorldClockController.shared.allWorldClocks.append(worldClock)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    //MARK: - Private Functions
    @objc func addWorldClock() {
        self.navigationController?.pushViewController(UIStoryboard.init(name: "WorldClock", bundle: nil).instantiateViewController(withIdentifier: "WorldClockList"), animated: true)
    }
}
