//
//  OrderModel.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import Foundation

struct OrderModel: Identifiable, Hashable {
    let id = UUID()
    let recipe: HFRecipe
}
