//
//  ViewController.swift
//  Moundi TP0-Storyboard
//
//  Created by user165586 on 14/02/2020.
//  Copyright © 2020 user165586. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var listPerson: PersonSet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var prenomLabel: UITextField!
    @IBOutlet weak var nomField: UITextField!
    
    @IBAction func ajouter(_ sender: Any) {
        let pers = Person(nom: nomField.text ?? "rien", prenom: prenomLabel.text ?? "rien"
            , departement: "", job: "")
        if let l = listPerson {
            l.addPerson(person: pers)
        }
    }
    
}

