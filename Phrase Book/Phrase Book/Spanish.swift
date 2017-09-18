//
//  TBVC4.swift
//  Phrase Book
//
//  Created by Dr.Drake Ramoray on 10.04.16.
//  Copyright © 2016 Dr.Drake Ramoray. All rights reserved.
//

import Foundation
import UIKit

class TableViewController4: UITableViewController {
    
    var names = [String]()
    var identities = [String]()
    
    override func viewDidLoad() {
        self.tableView.rowHeight = UITableViewAutomaticDimension;
    
        names = ["Hello/Bye - Hola/Hasta luego", "Sorry - Perdón", "Thank you - Gracias","How was your sleep? - Dormiste bien?","Did you rest well? - Descansaste bien?","Good night -  Buenas noches","You may - Se puede ","You may not - No se puede","Yes - Sí","No - No","No smoking here - No se puede fumar aquí","Wait a little bit - Espera un poco por favor","Don't go - No te vayas","Hurry - Dese prisa","Follow me - Sígueme","Don't late - No llegues tarde ","Later - Más tarde","Are you OK? - Estás bién??","Are you ill? - Estás herido/a?","Be carefull - Cuidado","Stop do it - Para por favor","Be quiet - Tranquila", "Let's do it together - Vamos a participar", "I want to go to toilet - Quiero ir al baño", "I'm hungry - Tengo hambre", "I'm thirsty - Tengo sed", "It's hot - Tengo calor", "I'm tired - Estoy cansado/a ", "My leg hurts - Me duelen los pies ", "It's not interesting - Es aburrido"]
        identities = ["F","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell4")
        
        cell?.textLabel!.text = names[indexPath.row]
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         _ = identities[indexPath.row]
    
    }
}
