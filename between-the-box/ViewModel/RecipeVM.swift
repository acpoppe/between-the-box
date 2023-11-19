//
//  RecipeVM.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import SwiftUI

@Observable class RecipeVM {
    var recipe: BTBRecipeModel
    
    init(recipe: BTBRecipeModel) {
        self.recipe = recipe
    }
}
