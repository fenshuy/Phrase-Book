//
//  TBVC5.swift
//  Phrase Book
//
//  Created by Dr.Drake Ramoray on 10.04.16.
//  Copyright © 2016 Dr.Drake Ramoray. All rights reserved.
//

import Foundation
import UIKit

class TableViewController5: UITableViewController {
    
    var names = [String]()
    var identities = [String]()
    
    override func viewDidLoad() {
    
        self.tableView.rowHeight = UITableViewAutomaticDimension
              
        names = ["Hello/Bye - Nǐ hǎo/zài jiàn" , "Sorry - Duì bu qǐ", "Thank you - Xiè xie","How was your sleep? - Shuì de hǎo ma?","Did you rest well? - Xiū xi hǎo le méi yǒu?","Good night - wǎn'ān","You may - Xíng/kě yǐ","You may not - Bù xíng / bù kě yǐ","Yes - Shì / duì","No - Bú shì / bú duì","No smoking here - Zhè lǐ jìn zhǐ xī yān","Wait a little bit - Děng yí xià","Don't go - Bù yào zǒu","Hurry - Kuài diǎn","Follow me - Gēn wǒ lái","Don't late - Bú yào chí dào","Later - děng yi huì èr","Are you OK? - hái hǎo ma?","Are you ill? - Nǎ lǐ bù shū fu ma??","Be carefull - xiǎo xīn diǎn","Stop do it - bù yào zuò","Be quiet - qǐng ān jìngxià lái", "Let's do it together - Wǒ men yì qǐ lái ", "I want to go to toilet - Wǒ xiǎng qù cè suǒ/ xǐ shǒu jiān", "I'm hungry - Dù zi' è /  è", "I'm thirsty - Kǒu kě / kě", "It's hot - rè", "I'm tired - lèi", "My leg hurts - tuǐ téng", "It's not interesting - bù hǎo wán"]
        identities = ["F","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell5")
        
        cell?.textLabel!.text = names[indexPath.row]
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         _ = identities[indexPath.row]
    }

    
    
}
