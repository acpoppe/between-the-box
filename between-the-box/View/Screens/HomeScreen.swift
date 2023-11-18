//
//  HomeScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct HomeScreen: View {
    
    @State private(set) var rootVM: RootVM
    
    var body: some View {
        VStack(spacing: 32) {
            self.homeScreenButton(
                icon: "fork.knife",
                label: "Use your leftovers"
            )
            self.homeScreenButton(
                icon: "list.bullet.rectangle.portrait",
                label: "View recipes"
            )
        }
        .padding(.horizontal, 20)
    }
    
    @ViewBuilder
    private func homeScreenButton(
        icon: String,
        label: String
    ) -> some View {
        Button {
            
        } label: {
            HStack {
                Image(systemName: icon)
                VStack {
                    Text(label)
                }
            }
        }
        .tint(.white)
        .frame(maxWidth: .infinity)
        .padding(32)
        .background {
            Color.green
        }
        .border(Color(red: 34/255, green: 160/255, blue: 34/255), width: 2)
    }
}

#Preview {
    HomeScreen(rootVM: RootVM())
}
