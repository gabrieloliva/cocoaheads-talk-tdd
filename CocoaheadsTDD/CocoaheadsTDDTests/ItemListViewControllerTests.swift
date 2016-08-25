//
//  ItemListViewControllerTests.swift
//  CocoaheadsTDD
//
//  Created by Gabriel Fernando Pinheiro de Oliva on 23/08/16.
//  Copyright © 2016 Gabriel Oliva. All rights reserved.
//

import XCTest
@testable import CocoaheadsTDD

class ItemListViewControllerTests: XCTestCase {
    
    var sut: EventListViewController!
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewControllerWithIdentifier("EventListViewController") as! EventListViewController
        _ = sut.view
    }
    
    func test_TableViewIsNotNilAfterViewDidLoad() {
        XCTAssertNotNil(sut.tableView, "Tableview should not be nil")
    }
    
    func test_ViewDidLoadShouldSetTableViewDataSource() {
        XCTAssertNotNil(sut.tableView?.dataSource, "Data source should not be nil")
        XCTAssertTrue(sut.tableView?.dataSource is EventListDataProvider)
    }
    
    func test_ViewDidLoadShouldSetTabmeViewDelegate() {
        XCTAssertNotNil(sut.tableView.delegate, "Delegate should not be nil")
        XCTAssertTrue(sut.tableView.delegate is EventListDataProvider)
    }
    
    func test_ViewDidLoadShouldSetDelegateAndDataSourceToTheSameObject() {
        XCTAssertEqual(sut.tableView.dataSource as? EventListDataProvider, sut.tableView.delegate as? EventListDataProvider, "Data source and delegate protocols should be to the same object")
    }
    
}
