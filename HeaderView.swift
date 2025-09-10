//
//  HeaderView.swift
//  GitHubPractice4
//
//  Created by Cassandra Botnari on 9/10/25.
//

import SwiftUI

struct HeaderView: View {
    @Binding var tasks: [Task]

    @State var enteredText: String = ""
    var body: some View {
        HStack {
            TextField("Add a new task", text: $enteredText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button{
                let enteredTextTask = Task(nameOfTask: enteredText)
                tasks.append(enteredTextTask)
                enteredText = ""
            } label:{
                Text("Add")
                    .foregroundStyle(.blue)
            }
            
        }
    }
}

