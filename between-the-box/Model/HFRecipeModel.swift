//
//  HFRecipeModel.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import Foundation

struct HFRecipeModel: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let ingredients: [Ingredient]
    let finishedProducts: [Ingredient]
}
