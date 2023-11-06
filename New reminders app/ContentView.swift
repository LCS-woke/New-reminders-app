//
//  ContentView.swift
//  New reminders app
//
//  Created by William Oke on 2023-11-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("To do")
                        .font(Font.system(size: 40, weight: .bold))
                    .foregroundStyle(.blue)
                    
                    Spacer()
                }
                
                List {
                    Group {
                        Reminder(reminderName: "Call Auto body shop", date: "2023-11-16", time: " ")
                        Reminder(reminderName: "Feed Piper", date: "Tommorow", time: "8")
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                .frame(height: 300)
                .listStyle(.plain)
                .padding()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
