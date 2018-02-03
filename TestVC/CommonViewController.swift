//
//  CommonViewController.swift
//  TestVC
//
//  Created by Raunak Talwar on 03/02/18.
//  Copyright © 2018 Raunak Talwar. All rights reserved.
//

import UIKit

class CommonViewController: UIViewController {

    var tableViewDataSource: TableViewDataSourceProtocol?

    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        self.tableView.dataSource = tableViewDataSource
        self.view.addSubview(tableView)
        setupConstraints()
    }

    private func setupConstraints() {
        var constraints: [NSLayoutConstraint] = []
        constraints.append(self.tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor))
        constraints.append(self.tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor))
        constraints.append(self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor))
        constraints.append(self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor))
        NSLayoutConstraint.activate(constraints)
    }
}
