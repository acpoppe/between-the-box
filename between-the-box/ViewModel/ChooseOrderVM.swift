//
//  ChooseOrderVM.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import SwiftUI

@Observable class ChooseOrderVM {
    let lastWeekOrders: [OrderModel] = [
        OrderModel(
            recipe: RecipeModel(
                name: "Poblano Beef Tacos",
                description: "A delicious seasoning blend combined with fresh vegetables",
                ingredients: [
                    IngredientModel(
                        name: "Minced Pork",
                        amount: 450,
                        unit: "grams"
                    ),
                    IngredientModel(
                        name: "Poblano Peppers",
                        amount: 100,
                        unit: "grams"
                    ),
                    IngredientModel(
                        name: "Flour Tortillas",
                        amount: 4,
                        unit: nil
                    ),
                    IngredientModel(
                        name: "Roma Tomatoes",
                        amount: 2,
                        unit: nil
                    )
                ]
            )
        ),
        OrderModel(
            recipe: RecipeModel(
                name: "Chicken-Squash Curry",
                description: "Some description",
                ingredients: []
            )
        )
    ]
    let thisWeekOrders: [OrderModel] = [
        OrderModel(
            recipe: RecipeModel(
                name: "Spinach Lasagna",
                description: "Some description",
                ingredients: []
            )
        ),
        OrderModel(
            recipe: RecipeModel(
                name: "Creamy Butter Chicken",
                description: "Some description",
                ingredients: []
            )
        )
    ]
}
