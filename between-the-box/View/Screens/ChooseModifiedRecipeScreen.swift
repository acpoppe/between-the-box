//
//  ChooseModifiedRecipeScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import SwiftUI

struct ChooseModifiedRecipeScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private(set) var rootVM: RootVM
    @State private(set) var chooseModifiedRecipeVM: ChooseModifiedRecipeVM
    
    var body: some View {
        ScreenContainer {
            VStack(spacing: 0) {
                Text(self.chooseModifiedRecipeVM.ingredient.model.prompt)
                    .font(.custom(
                        "SourceSansPro-Regular",
                        size: 36
                    ))
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)
                ForEach(self.chooseModifiedRecipeVM.ingredient.model.modifiableRecipes) { recipe in
                    NavigationLink(
                        recipe.model.name,
                        value: Screen.recipe(recipe: recipe)
                    )
                    .buttonStyle(CTAButton(outlined: true))
                    .padding(.horizontal, 80)
                    .padding(.top, 18)
                }
                Spacer()
            }
            .padding(.horizontal, 20)
        }
        .applyCustomBackButton {
            self.dismiss()
        }
    }
}

#Preview {
    ChooseModifiedRecipeScreen(
        rootVM: RootVM(),
        chooseModifiedRecipeVM: ChooseModifiedRecipeVM(
            ingredient: .poblanoPeppers
        )
    )
}
