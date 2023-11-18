//
//  RecipeModel.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import Foundation

struct RecipeModel: Identifiable, Hashable {
    let id: UUID = UUID()
    let name: String
    let description: String
    let ingredients: [IngredientModel]
}
