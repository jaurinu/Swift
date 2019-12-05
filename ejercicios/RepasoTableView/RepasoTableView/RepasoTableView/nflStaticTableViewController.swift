//
//  nflStaticTableViewController.swift
//  RepasoTableView
//
//  Created by Apple Device 9 on 11/2/19.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
//creas clase hereda de UITableView Controller
//pones un label en el main storyboard
//@iboutlet nlfteam
//conectas la clase con el controlador
//
var nflTeam = ""
class NflStaticTAbleViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
            navigationItem.leftBarButtonItem = editButtonItem
            
    }
    
    
    
    
}



//pones el didLoad

//nflLabel.text = nflTeam

//==========================

//Esto va en el table view controller
//agregar funcion prepare for segue

//guard segue.indentifier == "Show"

//construir indexPAth
//con:
//guard let indexPath
