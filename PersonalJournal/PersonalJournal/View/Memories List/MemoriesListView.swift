//
//  MemoriesListView.swift
//  PersonalJournal
//
//  Created by Andrew Vale on 26/02/26.
//
import SwiftUI
import SwiftData

struct MemoriesListView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var journalEntries: [JournalEntry]
    
    var body: some View {
        ZStack{
            
            Color(.mint)
                .ignoresSafeArea()
            
            VStack {
                List {
                    ForEach(journalEntries) { journalEntry in
                        Text(journalEntry.title)
                    }
                }
                .navigationTitle("Meu diário")
                .overlay {
                    if journalEntries.isEmpty {
                        ContentUnavailableView(
                            "Sem memórias ainda",
                            systemImage: "book.closed",
                            description: Text("Adicione sua primeira lembrança tocando no botão de adicionar.")
                        )
                    } else {
                        EmptyView()
                    }
                }
                .scrollContentBackground(.hidden)
                .background(Color.clear)
            }
            .padding()
        }
    }
}

#Preview {
    MemoriesListView()
}
