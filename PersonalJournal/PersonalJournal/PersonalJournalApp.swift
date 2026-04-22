//
//  PersonalJournalApp.swift
//  PersonalJournal
//
//  Created by Andrew Vale on 26/02/26.
//

import SwiftUI
import SwiftData

@main
struct PersonalJournalApp: App {
    
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(appState)
                .modelContainer(for: JournalEntry.self)
        }
    }
}
