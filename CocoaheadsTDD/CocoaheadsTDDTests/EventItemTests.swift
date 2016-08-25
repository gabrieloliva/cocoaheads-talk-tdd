//
//  EventItemTests.swift
//  CocoaheadsTDD
//
//  Created by Gabriel Fernando Pinheiro de Oliva on 23/08/16.
//  Copyright © 2016 Gabriel Oliva. All rights reserved.
//

import XCTest
@testable import CocoaheadsTDD

class EventItemTests: XCTestCase {
    
    let testTitle = "Cocoaheads BH"
    let testDate = "23/08/2016"
    
    func testInit_EventShouldTakeTitle() {
        let event = EventItem(title: testTitle)
        XCTAssertEqual(event.title, testTitle, "Initializer should set the title")
    }
    
    func testInit_EventShouldTakeTitleAndDate() {
        let event = EventItem(title: testTitle, date: testDate)
        XCTAssertEqual(event.date, testDate, "Initializer should set the date")
    }
    
    func testEquatable_EventShouldBeEqual() {
        let firstEvent = EventItem(title: testTitle, date: testDate)
        let secondEvent = EventItem(title: testTitle, date: testDate)
        
        XCTAssertEqual(firstEvent, secondEvent, "First event should be equal to second event")
    }
    
    func testEquatable_EventShouldNotBeEqual() {
        let firstEvent = EventItem(title: testTitle, date: testDate)
        let secondEvent = EventItem(title: "Cocoaheads SP", date: "23/08/2016")
        
        XCTAssertNotEqual(firstEvent, secondEvent, "First event should not be equal to second event")
    }
    
}