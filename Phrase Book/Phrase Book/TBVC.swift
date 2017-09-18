//
//  TBVC.swift
//  Phrase Book
//
//  Created by Dr.Drake Ramoray on 09.04.16.
//  Copyright © 2016 Dr.Drake Ramoray. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    var names = [String]()
    var identities = [String]()
    
    override func viewDidLoad() {
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        names = ["Korean","Russian","Spanish","Chinese"]
        identities = ["A","B","C","D"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel!.text = names[indexPath.row]
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = identities[indexPath.row]
        let vievController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(vievController!, animated: true)
    }
}
