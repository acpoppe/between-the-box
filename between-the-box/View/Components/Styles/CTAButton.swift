//
//  CTAButton.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import SwiftUI

struct CTAButton: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
            .background {
                if configuration.isPressed {
                    Color.red
                } else {
                    Color.green
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .contentShape(Capsule())
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(red: 34/255, green: 160/255, blue: 34/255), lineWidth: 2)
            }
    }
}
