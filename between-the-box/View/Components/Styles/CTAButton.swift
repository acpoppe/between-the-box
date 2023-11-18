//
//  CTAButton.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import SwiftUI

struct CTAButton: ButtonStyle {
    
    let outlined: Bool
    
    init(outlined: Bool = false) {
        self.outlined = outlined
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.custom("SourceSansPro-Regular", size: 16))
            .kerning(-0.4)
            .foregroundStyle(self.getTextColor())
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
            .background {
                if !self.outlined {
                    configuration.isPressed ? HFColor.buttonPressedBackgroundPrimary : HFColor.primary
                } else {
                    configuration.isPressed ? HFColor.buttonPressedBackgroundSecondary : Color.clear
                }
            }
            .overlay {
                if self.outlined {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(configuration.isPressed ? HFColor.buttonPressedOutlineSecondary : HFColor.primary)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .contentShape(RoundedRectangle(cornerRadius: 8))
    }
    
    private func getTextColor() -> Color {
        if !self.outlined {
            return .white
        }
        return self.outlined ? HFColor.primary : .white
    }
}
