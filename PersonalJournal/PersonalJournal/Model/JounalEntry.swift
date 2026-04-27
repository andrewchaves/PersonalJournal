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

extension JournalEntry {
    static let mocks: [JournalEntry] = [
        JournalEntry(
            title: "Primeira memória",
            content: "Hoje comecei a escrever no meu diário em SwiftUI.",
            timestamp: Date()
        ),
        JournalEntry(
            title: "Passeio no parque",
            content: "Fui caminhar no parque e aproveitei para refletir sobre a semana.",
            timestamp: Date().addingTimeInterval(-86_400)
        ),
        JournalEntry(
            title: "Ideia de projeto",
            content: "Tive uma ideia para um app de journaling com SwiftData e MVVM.",
            timestamp: Date().addingTimeInterval(-172_800)
        )
    ]
}
