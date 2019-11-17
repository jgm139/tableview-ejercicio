//
//  DSTabla.swift
//  TableView-example
//
//  Created by Máster Móviles on 05/11/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import Foundation
import UIKit

class DSTabla: NSObject, UITableViewDataSource {
    var lista = ["Daenerys Targaryen", "Jon Nieve", "Cersei Lannister", "Eddard Stark"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let nuevaCelda = tableView.dequeueReusableCell(withIdentifier: "iCell", for: indexPath)
        nuevaCelda.textLabel?.text = self.lista[indexPath.row]
        return nuevaCelda
    }
    
    func insertarCelda(enTabla: UITableView, enFila: Int, conTexto: String) {
        self.lista.insert(conTexto, at: enFila)
        let indexPath = IndexPath(row: enFila, section: 0)
        enTabla.insertRows(at: [indexPath], with: UITableView.RowAnimation.fade)
    }
}
