//
//  ChooseLeftoverVM.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import SwiftUI

@Observable class ChooseLeftoverVM {
    let ingredients: [Ingredient]
    
    init(ingredients: [Ingredient]) {
        self.ingredients = ingredients
    }
}
