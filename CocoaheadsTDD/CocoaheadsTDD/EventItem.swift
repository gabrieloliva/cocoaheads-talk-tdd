//
//  EventItem.swift
//  CocoaheadsTDD
//
//  Created by Gabriel Fernando Pinheiro de Oliva on 23/08/16.
//  Copyright © 2016 Gabriel Oliva. All rights reserved.
//

import Foundation

func ==(lhs: EventItem, rhs: EventItem) -> Bool {
    if lhs.title == rhs.title && lhs.date == rhs.date { return true }
    return false
}

struct EventItem : Equatable {
    let title: String
    let date: String?
    
    init(title: String, date: String? = nil) {
        self.title = title
        self.date = date
    }
}