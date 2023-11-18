//
//  RecipeModel.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import Foundation

struct BTBRecipeModel: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let description: String
    let ingredients: [BTBIngredient]
    let steps: [Step]
}

struct BTBIngredient: Identifiable, Hashable {
    let id = UUID()
    let ingredient: Ingredient
    let amount: CGFloat
    let unit: String
}

struct Step: Identifiable, Hashable {
    let id = UUID()
    let description: String
}
