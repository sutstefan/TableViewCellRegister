//
//  TableViewCell.swift
//  TableViewCellRegister
//
//  Created by Stefan Sut on 11/28/17.
//  Copyright © 2017 Stefan Sut. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    // MARK: Init

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Private
    
    private func setupView() {
        backgroundColor = .red
    }

}
