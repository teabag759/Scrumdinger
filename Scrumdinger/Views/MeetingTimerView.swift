//
//  MeetingTimerVeiw.swift
//  Scrumdinger
//
//  Created by 이소현 on 11/13/23.
//

import SwiftUI

struct MeetingTimerView: View {
    let speakers: [ScrumTimer.Speaker]
    let theme: Theme
    
    private var currentSpeaker: String {
        speakers.first(where: { !$0.isCompleted})?.name ?? "Someone"
    }
    
    var body: some View {
        Circle().strokeBorder(lineWidth: 24)
            .overlay{
                VStack {
                    Text("Placeholder")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("is speaking")
                }
                .accessibilityElement(children: .combine)
                .foregroundStyle(theme.accentColor)
            }
    }
}

#Preview {
    MeetingTimerView()
}
