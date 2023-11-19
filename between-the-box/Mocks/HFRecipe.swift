//
//  HFRecipe.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import Foundation

enum HFRecipe: Identifiable, CaseIterable {
    case porkCarnitasTacos
    case chickenSquashCurry
    case creamyDillChicken
    case onePotVeganRedChili
    
    
    var id: UUID {
        return UUID()
    }
    
    var model: HFRecipeModel {
        switch self {
        case .porkCarnitasTacos:
            return HFRecipeModel(
                name: "Pork Carnitas Tacos",
                ingredients: [
                    .flourTortilla,
                    .groundPork,
                    .poblanoPepper,
                    .romaTomato,
                    .monterreyJack
                ],
                finishedProducts: [
                    .tacoFilling
                ]
            )
        case .chickenSquashCurry:
            return HFRecipeModel(
                name: "Chicken Squash Curry",
                ingredients: [
                    .hokkaidoSquash,
                    .chickenBreast,
                    .coconutMilk,
                    .canOfApricots
                ],
                finishedProducts: []
            )
        case .creamyDillChicken:
            return HFRecipeModel(
                name: "Creamy Dill Chicken",
                ingredients: [
                    .chickenBreast,
                    .greenBeans,
                    .potato
                ],
                finishedProducts: [
                    .cookedChicken,
                    .cookedVeggies
                ]
            )
        case .onePotVeganRedChili:
            return HFRecipeModel(
                name: "One-Pot Vegan Red Chili",
                ingredients: [
                    .kidneyBeans,
                    .jalapeno,
                    .romaTomato,
                    .tortillaChips,
                    .sourCream
                ],
                finishedProducts: []
            )
        }
    }
}
