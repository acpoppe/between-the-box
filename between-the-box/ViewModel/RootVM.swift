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
        RecipeModel(name: "Mac & Cheese", ingredients: []),
        RecipeModel(name: "Spaghetti", ingredients: []),
        RecipeModel(name: "Side Salad", ingredients: [])
    ]
}
