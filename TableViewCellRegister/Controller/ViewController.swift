//
//  ViewController.swift
//  TableViewCellRegister
//
//  Created by Stefan Sut on 11/28/17.
//  Copyright © 2017 Stefan Sut. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: Outlet
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Private
    
    private func setupView() {
       setupTableView()
    }
    
    private func setupTableView() {
        tableView.register(TableViewCell.self)
        tableView.dataSource = self
        tableView.rowHeight = 50
    }
    
    // MARK: UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as TableViewCell
        return cell
    }

}

