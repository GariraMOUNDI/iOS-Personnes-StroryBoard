//
//  TableViewCell.swift
//  Moundi TP0-Storyboard
//
//  Created by user165586 on 14/02/2020.
//  Copyright © 2020 user165586. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var nomLabel: UILabel!
    @IBOutlet weak var prenomLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setCell(person: Person){
        nomLabel.text = person.nom
        prenomLabel.text = person.prenom
        jobLabel.text = person.job
    }
}
