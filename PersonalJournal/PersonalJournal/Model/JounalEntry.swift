//
//  JounalEntry.swift
//  PersonalJournal
//
//  Created by Andrew Vale on 17/04/26.
//

import Foundation
import SwiftData

@Model
class JournalEntry {
    var title: String
    var content: String
    var timestamp: Date
    
    init(title: String, content: String, timestamp: Date = Date()) {
        self.title = title
        self.content = content
        self.timestamp = timestamp
    }
}
