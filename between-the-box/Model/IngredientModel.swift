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
    let modify: (BTBRecipe) -> BTBRecipeModel
    
    static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.id == rhs.id &&
        lhs.name == rhs.name &&
        lhs.prompt == rhs.prompt &&
        lhs.modifiableRecipes == rhs.modifiableRecipes
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
        hasher.combine(self.name)
    }
}
