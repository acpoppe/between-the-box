//
//  RecipeListScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct RecipeListScreen: View {
    
    @State private(set) var rootVM: RootVM
    @State private(set) var accountVM: AccountVM
    
    var body: some View {
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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Background())
    }
}

#Preview {
    RecipeListScreen(
        rootVM: RootVM(),
        accountVM: AccountVM()
    )
}
