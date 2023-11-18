//
//  RecipeScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct RecipeScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private(set) var rootVM: RootVM
    @State private(set) var recipeVM: RecipeVM
    
    var body: some View {
        ScreenContainer {
            VStack {
                Text(self.recipeVM.recipe.name)
                Spacer()
            }
        }
        .applyCustomBackButton {
            self.dismiss()
        }
    }
}

#Preview {
    RecipeScreen(
        rootVM: RootVM(),
        recipeVM: RecipeVM(recipe: RecipeModel(
            name: "Mac & Cheese",
            description: "Some description",
            ingredients: []
        ))
    )
}
