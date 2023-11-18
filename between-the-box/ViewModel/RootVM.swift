//
//  RootVM.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

@Observable class RootVM {
    var path: [Screen] = []
    let placeholderRecipes = [
        RecipeModel(
            name: "Tacos",
            description: "A delicious seasoning blend combined with fresh vegetables",
            ingredients: []
        ),
        RecipeModel(
            name: "Mac & Cheese",
            description: "Some description",
            ingredients: []
        ),
        RecipeModel(
            name: "Spaghetti",
            description: "Some description",
            ingredients: []
        ),
        RecipeModel(
            name: "Side Salad",
            description: "Some description",
            ingredients: []
        )
    ]
}
