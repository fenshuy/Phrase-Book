//
//  TBVC2.swift
//  Phrase Book
//
//  Created by Dr.Drake Ramoray on 10.04.16.
//  Copyright © 2016 Dr.Drake Ramoray. All rights reserved.
//

import Foundation
import UIKit

class TableViewController2: UITableViewController {
    
    var names = [String]()
    var identities = [String]()
    
    override func viewDidLoad() {
        self.tableView.rowHeight = UITableViewAutomaticDimension;
                
        names = ["Hello/Bye - 안녕", "Sorry - 미안해", "Thank you - 고마워","How are you? - 잘 지냈어?","Did you rest well? - 잘 쉬었니?","Good night - 잘 자","You may - 돼","You may not - 안 돼","Yes - 네(응)","No - 아니","No smoking here - 여기는 금연이야","Wait a little bit - 조금만 기다려","Don't go - 가지 마","Hurry - 빨리","Follow me - 따라와","Don't late - 늦지 마","Later - 나중에","Are you OK? - 괜찮아?","Are you ill? - 아픈데 있어?","Be carefull - 조심해","Please - 제발","Be quiet - 조용해", "Let's do it together - 이거 같이 하자", "I want to go to toilet - 화장실 가고 싶어", "I'm hungry - 배고파", "I'm thirsty - 목 말라", "It's hot - 더워", "I'm tired - 피곤해", "My leg hurts - 발 아파", "It's not interesting - 재미없어"]
        identities = ["E","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
           }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2")
        
        cell?.textLabel!.text = names[indexPath.row]
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        _ = identities[indexPath.row]
   


    }
}
