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
            NavigationLink(
                "Use your leftovers",
                value: Screen.chooseOrder
            )
                .buttonStyle(
                    MainContentButton(iconName: "fork.knife")
                )
            NavigationLink(
                "View recipes",
                value: Screen.recipeList
            )
                .buttonStyle(
                    MainContentButton(
                        iconName: "list.bullet.rectangle.portrait"
                    )
                )
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    HomeScreen(rootVM: RootVM())
}
