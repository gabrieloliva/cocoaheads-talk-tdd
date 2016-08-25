//
//  ItemListDataProviderTests.swift
//  CocoaheadsTDD
//
//  Created by Gabriel Fernando Pinheiro de Oliva on 23/08/16.
//  Copyright © 2016 Gabriel Oliva. All rights reserved.
//

import XCTest
@testable import CocoaheadsTDD

class ItemListDataProviderTests: XCTestCase {
    
    var sut: EventListDataProvider!
    var tableView: UITableView!
    
    override func setUp() {
        sut = EventListDataProvider()
        tableView = UITableView()
    }
    
    func testNumberOfSections_IsOne() {
        tableView.dataSource = sut
        let numberOfSections = tableView.numberOfSections
        
        XCTAssertEqual(numberOfSections, 1, "Number of sections should be one")
    }
    
    func test_NumberOfRowsOfTableView_IsEventListCount() {
        tableView.dataSource = sut
        sut.eventManager = EventManager()
        
        sut.eventManager?.addEvent(EventItem(title: "Cocoaheads BH"))
        XCTAssertEqual(tableView.numberOfRowsInSection(0), 1, "Number of rows should be one")
        
        sut.eventManager?.addEvent(EventItem(title: "Cocoaheads SP"))
        tableView.reloadData()
        XCTAssertEqual(tableView.numberOfRowsInSection(0), 2, "Number of rows should be two")
    }
    
}
