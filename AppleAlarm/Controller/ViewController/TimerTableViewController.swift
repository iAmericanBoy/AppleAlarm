//
//  TimerTableViewController.swift
//  AppleAlarm
//
//  Created by XMS_JZhan on 3/7/19.
//  Copyright © 2019 Dominic Lanzillotta. All rights reserved.
//

import UIKit

class TimerTableViewController: UITableViewController {

    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.visibleViewController?.title = "Timer"
        updateViews()
    }
    
    func updateViews() {
        self.cancelButton.layer.cornerRadius = 30
        self.cancelButton.backgroundColor = UIColor.red
        
        self.startButton.layer.cornerRadius = 30
        self.startButton.backgroundColor = UIColor.green
        self.startButton.titleLabel?.textColor = UIColor.white
        self.startButton.layer.borderWidth = 1
        self.startButton.layer.borderColor = UIColor.gray.cgColor
        
        self.timePicker.setValue(UIColor.white, forKeyPath: "textColor")

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "timerCell", for: indexPath)

        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
