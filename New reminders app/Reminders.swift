//
//  Reminders.swift
//  New reminders app
//
//  Created by William Oke on 2023-11-06.
//

import SwiftUI

struct Reminder: View {
    let reminderName: String
    let date: String
    let time: String
    
    var body: some View {
        HStack {
            VStack {
                Image(systemName: "circle")
            }
            .border(.red)
            VStack {
                HStack {
                    Text(reminderName)
                        .font(Font.system(size: 20, weight: .semibold))
                    .border(.blue)
                    
                    Spacer()
                }
                HStack {
                    Text(date)
                        .font(Font.system(size: 16, weight: .thin))
                    Text(time)
                        .font(Font.system(size: 16, weight: .thin))
                    
                    Spacer()
                }
            }
            .border(.green)
            Spacer()
            
        }
        .border(.blue)
    }
}

#Preview {
    Reminder(reminderName: "Build a house", date: "24 August 2023", time: "8.00 Pm")
}
