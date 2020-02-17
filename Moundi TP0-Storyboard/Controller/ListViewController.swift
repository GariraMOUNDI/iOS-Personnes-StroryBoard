//
//  ListViewController.swift
//  Moundi TP0-Storyboard
//
//  Created by user165586 on 15/02/2020.
//  Copyright © 2020 user165586. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, PersonSetObserver {
    
    var listPerson = PersonSet()
    @IBOutlet weak var theTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listPerson.observer = self
        theTable.dataSource = listPerson
        // Do any additional setup after loading the view.
    }
    
    
    func dataAddded(at index: Int) {
        theTable.beginUpdates()
        theTable.insertRows(at:[IndexPath(row: index, section: 0)], with: .automatic)
        theTable.endUpdates()
    }
    
    func deleteData(at index: Int){
        theTable.beginUpdates()
        theTable.deleteRows(at: [IndexPath(row: index, section: 0)], with: .automatic)
        theTable.endUpdates()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "information":
            if let nextView = segue.destination as? InformationViewController {
                let index = theTable.indexPathForSelectedRow
             nextView.person = listPerson.getPersons()[index!.row]
            }
            break
        case "ajout":
            if let nextView = segue.destination as? ViewController{
                nextView.listPerson = listPerson
            }
            break
        default:
            print("Error")
            
        }
        
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

