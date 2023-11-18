//
//  BTBRecipe.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import Foundation

enum BTBRecipe: Identifiable, CaseIterable {
    case macAndCheese
    case omelette
    case overnightChiaPudding
    case spaghettiWithTomatoSauce
    case mixedRice
    case bakedVeggies
    case tunaSalad
    case lentilSoup
    
    var id: UUID {
        return UUID()
    }
    
    var model: BTBRecipeModel {
        switch self {
        case .macAndCheese:
            return BTBRecipeModel(
                name: "Mac 'n' Cheese",
                description: "A timeless comfort food classic",
                ingredients: [
                    BTBIngredient(ingredient: .macaroniNoodles, amount: 150, unit: "grams"),
                    BTBIngredient(ingredient: .shreddedCheese, amount: 65, unit: "grams"),
                    BTBIngredient(ingredient: .milk, amount: 125, unit: "ml"),
                    BTBIngredient(ingredient: .butter, amount: 30, unit: "grams")
                ],
                steps: [
                    Step(description: "Cook 75g of elbow macaroni in salted boiling water. Drain."),
                    Step(description: "Melt 15g butter in a saucepan. Add 15g flour and whisk for 1-2 minutes."),
                    Step(description: "Gradually whisk in 125ml milk until thickened."),
                    Step(description: "Reduce heat, add 65g shredded cheddar, and stir until melted. Season with salt and pepper."),
                    Step(description: "Combine macaroni with cheese sauce.")
                ]
            )
        case .omelette:
            return BTBRecipeModel(
                name: "Omelette",
                description: "A quick staple full of proteins",
                ingredients: [
                    BTBIngredient(ingredient: .eggs, amount: 3, unit: "eggs"),
                    BTBIngredient(ingredient: .onion, amount: 0.5, unit: "onions"),
                    BTBIngredient(ingredient: .garlic, amount: 2, unit: "cloves")
                ],
                steps: [
                    Step(description: "Dice a small onion and mince a garlic clove."),
                    Step(description: "In a pan, sauté the onion and garlic in a bit of oil until softened."),
                    Step(description: "In a bowl, beat 3 eggs until well mixed."),
                    Step(description: "Pour the eggs into the pan"),
                    Step(description: "Let the edges set, then gently lift them to let the uncooked eggs flow underneath."),
                    Step(description: "Fold the omelette in half using a spatula and cook for another minute or until fully set."),
                    Step(description: "Slide the omelette onto a plate, season with salt and pepper, and enjoy!")
                ]
            )
        case .overnightChiaPudding:
            return BTBRecipeModel(
                name: "Overnight Chia Pudding",
                description: "Tomorrow morning you will thank you for this one",
                ingredients: [
                    BTBIngredient(ingredient: .chiaSeeds, amount: 30, unit: "grams"),
                    BTBIngredient(ingredient: .milk, amount: 240, unit: "ml")
                ],
                steps: [
                    Step(description: "In a bowl, combine 30g of chia seeds and 240ml of milk."),
                    Step(description: "Let the mixture sit for a few minutes, then stir again to prevent clumping."),
                    Step(description: "Cover the bowl and refrigerate for at least 4 hours or overnight.")
                ]
            )
        case .spaghettiWithTomatoSauce:
            return BTBRecipeModel(
                name: "Spaghetti with Tomato Sauce",
                description: "Makes you want to book a vacation to Italy",
                ingredients: [
                    BTBIngredient(ingredient: .spaghettiNoodles, amount: 100, unit: "grams"),
                    BTBIngredient(ingredient: .onion, amount: 0.5, unit: "onions"),
                    BTBIngredient(ingredient: .garlic, amount: 2, unit: "cloves"),
                    BTBIngredient(ingredient: .cannedTomatoes, amount: 125, unit: "ml")
                ],
                steps: [
                    Step(description: "Cook 100 grams of spaghetti. Drain and set aside."),
                    Step(description: "In a pan, heat 2 tbsp of olive oil over medium heat."),
                    Step(description: "Add 2 cloves of minced garlic and onions and sauté until fragrant."),
                    Step(description: "Add 125ml of crushed or diced canned tomatoes, and dried herbs to taste. Stir to combine."),
                    Step(description: "Simmer the sauce over low heat for about 15-20 minutes. Season with salt and black pepper to taste."),
                    Step(description: "Toss the cooked spaghetti into the sauce and serve.")
                ]
            )
        case .mixedRice:
            return BTBRecipeModel(
                name: "Mixed Rice",
                description: "A budget classic that you can add nearly everything to",
                ingredients: [
                    BTBIngredient(ingredient: .rice, amount: 100, unit: "grams"),
                    BTBIngredient(ingredient: .onion, amount: 0.5, unit: "onions"),
                    BTBIngredient(ingredient: .garlic, amount: 2, unit: "cloves"),
                    BTBIngredient(ingredient: .cheese, amount: 50, unit: "grams"),
                    BTBIngredient(ingredient: .cannedTomatoes, amount: 100, unit: "grams")
                ],
                steps: [
                    Step(description: "Cook rice according to instruction."),
                    Step(description: "In a pan, sauté garlic and onions until fragrant."),
                    Step(description: "Add canned tomatoes, season to taste."),
                    Step(description: "Add cooked rice, stir thorougly."),
                    Step(description: "Add cheese to mixture.")
                ]
            )
        case .bakedVeggies:
            return BTBRecipeModel(
                name: "Baked Veggies",
                description: "Basically cooks itself",
                ingredients: [
                    BTBIngredient(ingredient: .potato, amount: 200, unit: "grams"),
                    BTBIngredient(ingredient: .onion, amount: 0.5, unit: "onions")
                ],
                steps: [
                    Step(description: "Cut up potatoes in cubes, cut onions in big pieces."),
                    Step(description: "Add to an oven pan, season with salt, pepper, paprika and herbs."),
                    Step(description: "Sprinkle olive oil on top."),
                    Step(description: "Bake in the oven at 180 for 45 mins.")
                ]
            )
        case .tunaSalad:
            return BTBRecipeModel(
                name: "Tuna Salad",
                description: "Quick topping for wraps or sandwiches",
                ingredients: [
                    BTBIngredient(ingredient: .tuna, amount: 1, unit: "can"),
                    BTBIngredient(ingredient: .onion, amount: 0.5, unit: "onions"),
                    BTBIngredient(ingredient: .mayonnaise, amount: 100, unit: "ml"),
                    BTBIngredient(ingredient: .soySauce, amount: 1, unit: "tbsp")
                ],
                steps: [
                    Step(description: "Dice onions."),
                    Step(description: "Combine onions, tuna and mayo in a bowl."),
                    Step(description: "Season with pepper and soy sauce to taste.")
                ]
            )
        case .lentilSoup:
            return BTBRecipeModel(
                name: "Lentil Soup",
                description: "Nice and wintery soup",
                ingredients: [
                    BTBIngredient(ingredient: .redLentils, amount: 100, unit: "grams"),
                    BTBIngredient(ingredient: .onion, amount: 0.5, unit: "onions"),
                    BTBIngredient(ingredient: .garlic, amount: 2, unit: "cloves"),
                    BTBIngredient(ingredient: .tomatoPaste, amount: 2, unit: "tbsp")
                ],
                steps: [
                    Step(description: "Dice onions."),
                    Step(description: "Combine onions, tuna and mayo in a bowl."),
                    Step(description: "Season with pepper and soy sauce to taste.")
                ]
            )
        }
    }
}
