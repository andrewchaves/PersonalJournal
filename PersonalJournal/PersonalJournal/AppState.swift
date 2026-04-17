//
//  AppState.swift
//  PersonalJournal
//
//  Created by Andrew Vale on 16/04/26.
//

import Combine

enum AppTab: Hashable {
    case memoriesList
    case addNewMemory
}

class AppState: ObservableObject {
    @Published var selectedTab: AppTab = .memoriesList
}
