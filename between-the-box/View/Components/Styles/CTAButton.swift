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
    }
}
