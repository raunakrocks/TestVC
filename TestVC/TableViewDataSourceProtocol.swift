//
//  TableViewDataSourceProtocol.swift
//  TestVC
//
//  Created by Raunak Talwar on 03/02/18.
//  Copyright © 2018 Raunak Talwar. All rights reserved.
//

import Foundation
import UIKit

protocol TableViewDataSourceProtocol: UITableViewDataSource {

}

class TableViewDataSourceProtocolImplementer1: NSObject, TableViewDataSourceProtocol {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = .red
        return cell
    }
}

class TableViewDataSourceProtocolImplementer2: NSObject, TableViewDataSourceProtocol {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = .green
        return cell
    }
}
