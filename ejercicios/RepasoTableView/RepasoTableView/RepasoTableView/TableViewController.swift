//
//  TableViewController.swift
//  RepasoTableView
//
//  Created by Apple Device 9 on 11/2/19.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit

class EjemploTableViewController: UITableViewController {
    
    //el modelo puede ser un arreglo. definir modelo-- se crea una clase donde se pone el modelo
    let data = ["Dallas Cowboys", "Baltimore", "Arizona", "Bufallo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
   //definir celda

    //contenido celda
    //regresar celda
    
    //se inicializa la celda
    
    //modelo vista controlador
    //vista storyboard
    //modelo cualquier informacion que quieras usar,
    //controlador une el modelo con la vista
    //dos cosas ppales:
    //cuantos renglones
    //que informacion va a tener
    
    //como pasar informacion de un viewcontroller a otro view controller
    //con un prepare
    //agregas otro navigation controller
    //view controlller
    //arrastras la celda y le dices present model
    //embed in navigation controller
    //seleccionas el view controller y aprietas el boton
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
