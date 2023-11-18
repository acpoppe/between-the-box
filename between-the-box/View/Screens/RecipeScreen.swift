//
//  RecipeScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct RecipeScreen: View {
    
    @State private(set) var rootVM: RootVM
    @State private(set) var recipeVM: RecipeVM
    
    var body: some View {
        ScreenContainer {
            VStack {
                Text(self.recipeVM.recipe.name)
                Spacer()
            }
        }
    }
}

#Preview {
    RecipeScreen(
        rootVM: RootVM(),
        recipeVM: RecipeVM(recipe: RecipeModel(
            name: "Mac & Cheese",
            ingredients: []
        ))
    )
}
