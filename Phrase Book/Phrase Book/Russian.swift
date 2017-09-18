//
//  TBVC3.swift
//  Phrase Book
//
//  Created by Dr.Drake Ramoray on 10.04.16.
//  Copyright © 2016 Dr.Drake Ramoray. All rights reserved.
//

import Foundation
import UIKit

class TableViewController3: UITableViewController {
    
    var names = [String]()
    var identities = [String]()
    
    override func viewDidLoad() {
        self.tableView.rowHeight = UITableViewAutomaticDimension;

        names = ["Hello/Bye - Привет/Пока", "Sorry - Извини", "Thank you - Спасибо","How are you? - Как дела?","Good morning - Доброе утро","Good night - Спокойной ночи","Good afternoon - Добрый день","I love you - Я тебя люблю","Yes - Да","No - Нет","Good - Хорошо","Wait a little bit - Подожди немного","Don't go - Не уходи","Hurry - Быстрее","Follow me - Иди за мной","Don't late - Не опаздывай","Later - Позже","Are you OK? - Ты в порядке?","Are you ill? - Ты болен?","Be carefull - Осторожно","Please - Пожалуйста","Be quiet - Тихо", "Let's do it together - Давай делать вместе", "I want to go to toilet - Я хочу в туалет", "I'm hungry - Я хочу кушать", "I'm thirsty - Хочу пить", "It's hot - Жарко", "I'm tired - Я устал(а)", "My leg hurts - У меня болит нога", "It's not interesting - Не интересно"]
        identities = ["F","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell3")
        
        cell?.textLabel!.text = names[indexPath.row]
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        _ = identities[indexPath.row]
        
    }
}
