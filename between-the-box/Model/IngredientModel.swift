//
//  IngredientModel.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import Foundation

struct IngredientModel: Identifiable, Hashable {
    let id: UUID = UUID()
    let name: String
    let amount: Int
    let unit: String?
}
