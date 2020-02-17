//
//  PersonSetObserver.swift
//  Moundi TP0-Storyboard
//
//  Created by user165586 on 15/02/2020.
//  Copyright © 2020 user165586. All rights reserved.
//

import Foundation

protocol PersonSetObserver{
    func dataAddded(at: Int)
    func deleteData(at: Int)
}
