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
    var ingredients: [BTBIngredient]
    var steps: [Step]
}

struct BTBIngredient: Identifiable, Hashable {
    let id = UUID()
    let ingredient: Ingredient
    let amount: CGFloat
    let unit: String?
    let isModification: Bool
    
    init(ingredient: Ingredient, amount: CGFloat, unit: String?, isModification: Bool = false) {
        self.ingredient = ingredient
        self.amount = amount
        self.unit = unit
        self.isModification = isModification
    }
}

struct Step: Identifiable, Hashable {
    let id = UUID()
    let description: String
    let isModification: Bool
    
    init(description: String, isModification: Bool = false) {
        self.description = description
        self.isModification = isModification
    }
}
