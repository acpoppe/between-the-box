//
//  RecipeListScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct RecipeListScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private(set) var rootVM: RootVM
    @State private(set) var accountVM: AccountVM
    
    var body: some View {
        ScreenContainer {
            VStack {
                if !self.accountVM.isAccountConnected {
                    NavigationLink(value: Screen.connectAccount) {
                        Text("Connect your account")
                    }
                }
                List {
                    ForEach(self.rootVM.placeholderRecipes) { recipe in
                        NavigationLink(recipe.name, value: Screen.recipe(recipe: recipe))
                    }
                }
                .listStyle(.inset)
                .scrollContentBackground(.hidden)
            }
        }
        .applyCustomBackButton {
            self.dismiss()
        }
    }
}

#Preview {
    RecipeListScreen(
        rootVM: RootVM(),
        accountVM: AccountVM()
    )
}
