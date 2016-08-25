//
//  EventManagerTests.swift
//  CocoaheadsTDD
//
//  Created by Gabriel Fernando Pinheiro de Oliva on 23/08/16.
//  Copyright © 2016 Gabriel Oliva. All rights reserved.
//

import XCTest
@testable import CocoaheadsTDD

class EventManagerTests: XCTestCase {
    
    var sut: EventManager!
    
    override func setUp() {
        sut = EventManager()
    }
    
    func testEventCount_ShouldBeZero() {
        XCTAssertEqual(sut.eventCount, 0, "Initially eventManager should be zero.")
    }
    
    func testEventCount_AfterAddingOne_IsOne() {
        sut.addEvent(EventItem(title: "Cocoaheads BH"))
        XCTAssertEqual(sut.eventCount, 1, "Event count should be 1 after adding one")
    }
    
    func testEventAtIndex_ShouldReturnPreviouslyAddedEvent() {
        let event = EventItem(title: "CocoaHeads BH", date: "23/08/2015")
        sut.addEvent(event)
        
        XCTAssertEqual(sut.eventAtIndex(0), event, "Returned event should be equal to previously added event")
    }
    
    func testeEventAtIndex_ShouldRemovePreviousltAddedEvent() {
        let event = EventItem(title: "CocoaHeads BH", date: "23/08/2015")
        sut.addEvent(event)
    }
    
}
