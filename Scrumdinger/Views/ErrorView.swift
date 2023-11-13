//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by 이소현 on 11/10/23.
//

import SwiftUI

struct ErrorView: View {
    let errorWrapper: ErrorWrapper
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack{
            VStack {
                Text("An error has occurred!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding(.bottom)
                Text(errorWrapper.error.localizedDescription)
                    .font(.caption)
                    .padding(.top)
                Spacer()
            }
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(16)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Dismiss") {
                        dismiss()
                    }
                }
            }
        }
    }
        
}

struct ErrorView_Previews: PreviewProvider {
    enum SampleError: Error {
        case errorRequired
    }
    
    static var wrapper: ErrorWrapper {
        ErrorWrapper(error: SampleError.errorRequired,
        guidance: "You cna safely ignores this error.")
    }
    
    static var previews: some View {
        ErrorView(errorWrapper: wrapper)
    }
}

