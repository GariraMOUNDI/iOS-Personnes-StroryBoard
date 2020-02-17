//
//  PersonSet.swift
//  Moundi TP0-Storyboard
//
//  Created by user165586 on 14/02/2020.
//  Copyright © 2020 user165586. All rights reserved.
//

import Foundation
import UIKit

class PersonSet: NSObject, UITableViewDataSource{
    
    var observer: PersonSetObserver!
    
    
    private(set) var persons = [
        Person(nom: "Masd1", prenom: "sdas1", departement: "asda1", job: "ads1"),
        Person(nom: "Masd2", prenom: "sdas2", departement: "asda2", job: "ads2"),
        Person(nom: "Masd3", prenom: "sdas3", departement: "asda3", job: "ads3"),
        Person(nom: "Masd4", prenom: "sdas4", departement: "asda4", job: "ads4"),
        Person(nom: "Masd5", prenom: "sdas5", departement: "asda5", job: "ads5"),
        Person(nom: "Mas6", prenom: "sdas6", departement: "asda6", job: "ads6")
    ]
    
   
    
    func addPerson(person: Person) {
        self.persons.append(person)
        if let o = self.observer {
            o.dataAddded(at: self.persons.count-1)
        }
    }
    
    func getPersons() -> [Person] {
        return persons
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return persons.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath) as! TableViewCell

        cell.setCell(person: persons[indexPath.row])

        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            persons.remove(at: indexPath.row)
            if let o = self.observer {
                o.deleteData(at: indexPath.row)
            }
        }
        
    }
 
}
