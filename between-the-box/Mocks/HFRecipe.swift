//
//  HFRecipe.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import Foundation

enum HFRecipe: Identifiable, CaseIterable {
    case poblanoBeefTacos
    
    var id: UUID {
        return UUID()
    }
    
    var model: HFRecipeModel {
        switch self {
        case .poblanoBeefTacos:
            return HFRecipeModel(
                name: "Poblano Beef Tacos",
                ingredients: [
                    .flourTortillas,
                    .mincedPork,
                    .poblanoPeppers,
                    .romaTomatoes
                ]
            )
        }
    }
}
