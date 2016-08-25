//
//  EventManager.swift
//  CocoaheadsTDD
//
//  Created by Gabriel Fernando Pinheiro de Oliva on 23/08/16.
//  Copyright © 2016 Gabriel Oliva. All rights reserved.
//

import Foundation

class EventManager {
    var eventCount: Int { return eventItems.count }
    
    private var eventItems = [EventItem]()
    
    func addEvent(event: EventItem) {
        eventItems.append(event)
    }
    
    func eventAtIndex(index: Int) -> EventItem {
        return eventItems[index]
    }
}