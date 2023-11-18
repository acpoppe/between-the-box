//
//  IngredientModel.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import Foundation

struct IngredientModel: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let prompt: String
    let modifiableRecipes: [BTBRecipe]
}
