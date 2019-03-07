//
//  AlarmTableViewController.swift
//  AppleAlarm
//
//  Created by XMS_JZhan on 3/7/19.
//  Copyright © 2019 Dominic Lanzillotta. All rights reserved.
//

import UIKit

class AlarmTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        setTabBarTitles()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func updateViews() {
        self.navigationController?.visibleViewController?.title = "Alarm"
        self.navigationController?.visibleViewController?.navigationItem.leftBarButtonItem = self.editButtonItem
        self.navigationController?.visibleViewController?.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
        
    }
    
    func setTabBarTitles() {
        self.tabBarController?.tabBar.items![0].title = "World Clock"
        self.tabBarController?.tabBar.items![1].title = "Alarm"
        self.tabBarController?.tabBar.items![2].title = "Bedtime"
        self.tabBarController?.tabBar.items![3].title = "Stopwatch"
        self.tabBarController?.tabBar.items![4].title = "Timer"
    }
    
    @objc func addButtonTapped() {
        
    }
    
    @objc func editButtonTapped() {
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "alarmCell", for: indexPath)
         
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
