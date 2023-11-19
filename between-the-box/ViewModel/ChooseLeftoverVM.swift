//
//  ChooseLeftoverVM.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import SwiftUI

@Observable class ChooseLeftoverVM {
    let ingredients: [Ingredient]
    let finishedProducts: [Ingredient]
    
    init(
        ingredients: [Ingredient],
        finishedProducts: [Ingredient]
    ) {
        self.ingredients = ingredients
        self.finishedProducts = finishedProducts
    }
}
