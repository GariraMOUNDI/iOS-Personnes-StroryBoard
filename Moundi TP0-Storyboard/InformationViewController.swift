//
//  InformationViewController.swift
//  Moundi TP0-Storyboard
//
//  Created by user165586 on 14/02/2020.
//  Copyright © 2020 user165586. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {

    @IBOutlet weak var nomLabel: UILabel!
       @IBOutlet weak var prenomLabel: UILabel!
       @IBOutlet weak var descLabel: UILabel!
       @IBOutlet weak var jobLabel: UILabel!
       
       var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nomLabel.text = person?.nom
        self.prenomLabel.text = person?.prenom
        self.descLabel.text = person?.departement
        self.jobLabel.text = person?.job
        
        // Do any additional setup after loading the view.
    }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
