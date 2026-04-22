//
//  ContentView.swift
//  PersonalJournal
//
//  Created by Andrew Vale on 26/02/26.
//

import SwiftUI

struct AddNewMemoryView: View {
    
    @State private var title: String = ""
    @State private var content: String = ""
    @State private var timestamp: Date = Date()
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Color(.mint)
                    .ignoresSafeArea()
                
                Form {
                    
                    Section(header: Text("Informações")) {
                        TextField("Título", text: $title)
                        
                        DatePicker(
                            "Data",
                            selection: $timestamp,
                            displayedComponents: [.date, .hourAndMinute]
                        )
                    }
                    .listRowBackground(Color.formSection)
                    
                    Section(header: Text("Conteúdo")) {
                        TextEditor(text: $content)
                            .frame(minHeight: 150)
                    }
                    .listRowBackground(Color.formSection)
                    
                    Section {
                        Button(action: {
                            print("Clicou em salvar!")
                        }) {
                            Text("Salvar")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .foregroundColor(.black)
                                .fontWeight(.medium)
                        }
                        .disabled(title.isEmpty || content.isEmpty)
                    }
                    .listRowBackground(Color.button)
                }
                .navigationTitle("O que houve hoje?")
                .scrollContentBackground(.hidden)
            }
        }
    }
}

#Preview {
    AddNewMemoryView()
}
