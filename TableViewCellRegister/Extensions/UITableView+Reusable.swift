//
//  UITableView+Reusable.swift
//  TableViewCellRegister
//
//  Created by Stefan Sut on 11/28/17.
//  Copyright © 2017 Stefan Sut. All rights reserved.
//

import UIKit

extension UITableView {
    
    func register<T: UITableViewCell>(_ :T.Type) {
        register(T.self, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Couldn't deque cell")
        }
        return cell
    }
    
}
