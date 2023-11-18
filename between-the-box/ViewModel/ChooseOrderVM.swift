//
//  ChooseOrderVM.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import SwiftUI

@Observable class ChooseOrderVM {
    let placeholderOrders: [OrderModel] = [
        OrderModel(
            date: Date().advanced(by: -(60*60*96)),
            recipe: RecipeModel(
                name: "Tacos",
                ingredients: [
                    IngredientModel(
                        name: "Beef",
                        amount: 450,
                        unit: "grams"
                    ),
                    IngredientModel(
                        name: "Lettuce",
                        amount: 200,
                        unit: "grams"
                    ),
                    IngredientModel(
                        name: "Tomatoes",
                        amount: 2,
                        unit: nil
                    ),
                    IngredientModel(
                        name: "Tortillas",
                        amount: 4,
                        unit: nil
                    )
                ]
            )
        ),
        OrderModel(
            date: Date().advanced(by: -(60*60*96)),
            recipe: RecipeModel(
                name: "Chicken Squash Curry",
                ingredients: []
            )
        ),
        OrderModel(
            date: Date().advanced(by: -(60*60*48)),
            recipe: RecipeModel(
                name: "Lasagna",
                ingredients: []
            )
        )
    ]
}
