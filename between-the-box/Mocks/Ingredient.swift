//
//  Ingredients.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import Foundation

enum Ingredient: Identifiable, CaseIterable {
    case poblanoPeppers
    case mincedPork
    case flourTortillas
    case romaTomatoes
    
    var id: UUID {
        return UUID()
    }
    
    var model: IngredientModel {
        switch self {
        case .flourTortillas:
            return IngredientModel(
                name: "Flour Tortillas",
                prompt: "",
                modifiableRecipes: []
            )
        case .mincedPork:
            return IngredientModel(
                name: "Minced Pork",
                prompt: "",
                modifiableRecipes: []
            )
        case .poblanoPeppers:
            return IngredientModel(
                name: "Poblano Peppers",
                prompt: "Spice up these recipes with Poblano Peppers!",
                modifiableRecipes: [
                    .macAndCheese
                ]
            )
        case .romaTomatoes:
            return IngredientModel(
                name: "Roma Tomatoes",
                prompt: "",
                modifiableRecipes: []
            )
        }
    }
}
