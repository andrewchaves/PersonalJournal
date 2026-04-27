//
//  JournalEntryRepository.swift
//  PersonalJournal
//
//  Created by Andrew Vale on 26/04/26.
//

import SwiftData

protocol JournalEntryRepositoryProtocol {
    func fetchJournalEntries() -> [JournalEntry]
}

final class JournalEntryRepository: JournalEntryRepositoryProtocol {
    
    private let context: ModelContext
    
    init(context: ModelContext) {
        self.context = context
    }
    
    func fetchJournalEntries() -> [JournalEntry] {
        let descriptor = FetchDescriptor<JournalEntry>()
        return (try? context.fetch(descriptor)) ?? []
    }
}
