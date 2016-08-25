//
//  EventListViewController.swift
//  CocoaheadsTDD
//
//  Created by Gabriel Fernando Pinheiro de Oliva on 23/08/16.
//  Copyright © 2016 Gabriel Oliva. All rights reserved.
//

import UIKit

class EventListViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var dataProvider: protocol<UITableViewDataSource, UITableViewDelegate>! //EventListDataProvider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataProvider
        tableView.delegate = dataProvider
    }
}
