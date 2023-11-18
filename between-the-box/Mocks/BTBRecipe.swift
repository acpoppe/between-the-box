//
//  BTBRecipe.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import Foundation

enum BTBRecipe: Identifiable, CaseIterable {
    case macAndCheese
    
    var id: UUID {
        return UUID()
    }
    
    var model: BTBRecipeModel {
        switch self {
        case .macAndCheese:
            return BTBRecipeModel(
                name: "Mac 'n' Cheese",
                description: "A comfort food classic",
                ingredients: []
            )
        }
    }
}
