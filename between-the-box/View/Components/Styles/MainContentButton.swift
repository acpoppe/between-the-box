//
//  MainContentButton.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import SwiftUI

struct MainContentButton: ButtonStyle {
    let iconName: String?
    
    init(iconName: String? = nil) {
        self.iconName = iconName
    }
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            if let iconName {
                Image(systemName: iconName)
            }
            VStack {
                configuration.label
            }
        }
        .foregroundStyle(.white)
        .frame(maxWidth: .infinity)
        .padding(32)
        .background {
            Color.green
        }
        .border(Color(red: 34/255, green: 160/255, blue: 34/255), width: 2)
    }
}
