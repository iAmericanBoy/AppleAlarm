//
//  StopWatchTableViewController.swift
//  AppleAlarm
//
//  Created by XMS_JZhan on 3/7/19.
//  Copyright © 2019 Dominic Lanzillotta. All rights reserved.
//

import UIKit

class StopWatchTableViewController: UITableViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var lapButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setTitle()
        updateViews()
    }
    
    func setTitle() {
        self.navigationController?.visibleViewController?.title = "Stopwatch"
    }
    
    func updateViews() {
        self.startButton.layer.cornerRadius = 30
        self.startButton.backgroundColor = UIColor.green
        self.startButton.titleLabel?.textColor = UIColor.white
        self.startButton.layer.borderWidth = 1
        self.startButton.layer.borderColor = UIColor.gray.cgColor
        
        self.lapButton.layer.cornerRadius = 30
        self.lapButton.layer.borderWidth = 1
        self.lapButton.layer.borderColor = UIColor.gray.cgColor
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "stopwatchCell", for: indexPath)


        return cell
    }
    

}
