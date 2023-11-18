//
//  ChooseLeftoverScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct ChooseLeftoverScreen: View {
    
    @State private(set) var rootVM: RootVM
    @State private(set) var chooseLeftoverVM: ChooseLeftoverVM
    
    var body: some View {
        ScreenContainer {
            VStack(spacing: 30) {
                Text("Which leftover would you like help using?")
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                ForEach(self.chooseLeftoverVM.ingredients) { ingredient in
                    VStack {
                        NavigationLink(
                            ingredient.name,
                            value: getDestination(ingredient: ingredient)
                        )
                        .buttonStyle(MainContentButton())
                    }
                }
            }
            .padding(.horizontal, 20)
        }
    }
    
    private func getDestination(ingredient: IngredientModel) -> Screen {
        return switch ingredient.name {
        case "Beef":
            .recipe(recipe: self.rootVM.placeholderRecipes[0])
        case "Lettuce":
            .recipe(recipe: self.rootVM.placeholderRecipes[1])
        case "Tomatoes":
            .recipe(recipe: self.rootVM.placeholderRecipes[2])
        case "Tortillas":
            .recipe(recipe: self.rootVM.placeholderRecipes[1])
        default:
            .recipe(recipe: self.rootVM.placeholderRecipes[0])
        }
    }
}

#Preview {
    ChooseLeftoverScreen(
        rootVM: RootVM(),
        chooseLeftoverVM: ChooseLeftoverVM(ingredients: [
            IngredientModel(
                name: "Tomatoes",
                amount: 2,
                unit: "grams"
            ),
            IngredientModel(
                name: "Lettuce",
                amount: 2,
                unit: "kilograms"
            ),
        ])
    )
}
