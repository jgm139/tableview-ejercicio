//
//  ViewController.swift
//  TableView-example
//
//  Created by Máster Móviles on 05/11/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var iTabla: UITableView!
    var iDataSource: DSTabla!
    @IBOutlet weak var tituloCelda: UITextField!
    
    //MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        self.iDataSource = DSTabla()
        self.iTabla.dataSource = iDataSource
    }
    
    @IBAction func insertarCelda(_ sender: Any) {
        if let text = tituloCelda.text {
            self.iDataSource.insertarCelda(enTabla: self.iTabla, enFila: self.iTabla.numberOfRows(inSection: 0), conTexto: text)
            tituloCelda.text = ""
        }
    }
    
}

