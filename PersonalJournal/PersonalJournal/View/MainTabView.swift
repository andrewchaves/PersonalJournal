//
//  MainTabView.swift
//  PersonalJournal
//
//  Created by Andrew Vale on 26/02/26.
//

import SwiftUI

struct MainTabView: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        TabView(selection: $appState.selectedTab){
            NavigationStack {
                MemoriesListView()
            }
            .tabItem {
                Label("Home", systemImage: "list.dash")
            }
            .tag(AppTab.memoriesList)
            
            NavigationStack {
                AddNewMemoryView()
            }
            .tabItem {
                Label("Add Memory", systemImage: "magnifyingglass")
            }
            .tag(AppTab.addNewMemory)
        }
    }
}
