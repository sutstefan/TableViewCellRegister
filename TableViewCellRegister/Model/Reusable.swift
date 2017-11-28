//
//  Reusable.swift
//  TableViewCellRegister
//
//  Created by Stefan Sut on 11/28/17.
//  Copyright © 2017 Stefan Sut. All rights reserved.
//

import UIKit

protocol Reusable {}

extension Reusable where Self: UITableViewCell {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
}


