//
//  RootView.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct RootView: View {
    
    @State private var rootVM = RootVM()
    @State private var accountVM = AccountVM()
    
    init() {
        UINavigationBar.setAnimationsEnabled(false)
    }
    
    var body: some View {
        NavigationStack(path: self.$rootVM.path) {
            Group {
                HomeScreen(
                    rootVM: self.rootVM,
                    accountVM: self.accountVM
                )
            }
            .navigationDestination(for: Screen.self) { screen in
                switch screen {
                case .connectAccount:
                    ConnectAccountScreen(
                        rootVM: self.rootVM,
                        accountVM: self.accountVM
                    )
                case let .chooseLeftOver(ingredients, finishedProducts):
                    ChooseLeftoverScreen(
                        rootVM: self.rootVM,
                        chooseLeftoverVM: ChooseLeftoverVM(
                            ingredients: ingredients,
                            finishedProducts: finishedProducts
                        )
                    )
                case let .chooseModifiedRecipe(ingredient):
                    ChooseModifiedRecipeScreen(
                        rootVM: self.rootVM,
                        chooseModifiedRecipeVM: ChooseModifiedRecipeVM(ingredient: ingredient)
                    )
                case .chooseOrder:
                    ChooseOrderScreen(
                        rootVM: self.rootVM
                    )
                case let .recipe(recipe):
                    RecipeScreen(
                        rootVM: self.rootVM,
                        recipeVM: RecipeVM(recipe: recipe)
                    )
                case .recipeList:
                    RecipeListScreen(rootVM: self.rootVM)
                }
            }
        }
    }
}

extension View {
    func applyCustomBackButton(touchAction: @escaping () -> Void) -> some View {
        return self
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        touchAction()
                    } label: {
                        Image(systemName: "arrow.backward")
                            .tint(.black)
                            .fontWeight(.bold)
                    }
                }
            }
    }
}

enum Screen: Hashable {
    case connectAccount
    case chooseLeftOver(ingredients: [Ingredient], finishedProducts: [Ingredient])
    case chooseModifiedRecipe(ingredient: Ingredient)
    case chooseOrder
    case recipe(recipe: BTBRecipeModel)
    case recipeList
}

#Preview {
    RootView()
}
