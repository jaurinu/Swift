//
//  Table View Controller.swift
//  TableViewExample
//
//  Created by Apple Device 9 on 12/4/19.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit




class TableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    let exercisesList = ["PUSHUPS", "RUNNING 100 M", "PULLUPS", "SITUPS", "RUNNING 400 M", "CLIMBERS"]
    
    
//    override func numberOfSections(in tableView: UITableView) -> { return 1 }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercisesList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExerciseCell", for: indexPath) as! ExerciseTableViewCell
        cell.labelCell.text = exercisesList[indexPath.row]
        cell.imageCell.image = UIImage(named: exercisesList[indexPath.row])
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


