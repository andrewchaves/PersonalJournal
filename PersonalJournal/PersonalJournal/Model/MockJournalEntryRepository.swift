//
//  MockJournalEntryRepository.swift
//  PersonalJournal
//
//  Created by Andrew Vale on 26/04/26.
//

import SwiftData

// For usage in previews
final class MockJournalEntryRepository: JournalEntryRepositoryProtocol {
    func fetchJournalEntries() -> [JournalEntry] {
        JournalEntry.mocks
    }
}

// Used in debug mode
@MainActor
enum JournalEntrySeeder {
    static func seedIfNeeded(context: ModelContext) {
        let descriptor = FetchDescriptor<JournalEntry>()
        
        let hasAnyJournalEntry = (try? context.fetch(descriptor))?.isEmpty == false
        guard !hasAnyJournalEntry else {
            return
        }
        
        JournalEntry.mocks.forEach {
            context.insert($0)
        }
        
        print("Mocked Patients seeded!")
    }
}
