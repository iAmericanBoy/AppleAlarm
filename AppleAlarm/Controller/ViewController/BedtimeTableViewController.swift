//
//  BedtimeTableViewController.swift
//  AppleAlarm
//
//  Created by XMS_JZhan on 3/7/19.
//  Copyright © 2019 Dominic Lanzillotta. All rights reserved.
//

import UIKit

class BedtimeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    func updateViews() {
        self.navigationController?.visibleViewController?.title = "Bedtime"
        self.navigationController?.visibleViewController?.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Option", style: .plain, target: self, action: #selector(optionButtonTapped))
    }
    
    @objc func optionButtonTapped() {
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bedtimeCell", for: indexPath)

        // Configure the cell...

        return cell
    }
    

}
