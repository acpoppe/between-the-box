//
//  Ingredients.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import Foundation

enum Ingredient: Identifiable, CaseIterable {
    case poblanoPepper
    case groundPork
    case romaTomato
    case monterreyJack
    case flourTortilla
    case hokkaidoSquash
    case chickenBreast
    case coconutMilk
    case canOfApricots
    case greenBeans
    case potato
    case kidneyBeans
    case jalapeno
    case dicedTomatoes
    case tortillaChips
    case sourCream
    
    case eggs
    case macaroniNoodles
    case shreddedCheese
    case butter
    case garlic
    case onion
    case tuna
    case rice
    case spaghettiNoodles
    case milk
    case cannedTomatoes
    case cheese
    case redLentils
    case mayonnaise
    case soySauce
    case tomatoPaste
    case chiaSeeds
    
    case tacoFilling
    case cookedChicken
    case cookedVeggies
    
    var id: UUID {
        return UUID()
    }
    
    var model: IngredientModel {
        switch self {
        case .poblanoPepper:
            return IngredientModel(
                name: "Poblano Peppers",
                prompt: "Spice up these recipes with Poblano Peppers!",
                modifiableRecipes: [
                    .macAndCheese,
                    .omelette,
                    .mixedRice
                ]
            ) { recipe in
                switch recipe {
                case .macAndCheese:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add finely chopped Poblano Pepper to sauce", stepIndex: 4)
                case .omelette:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add tomato to pan and sauté", stepIndex: 3)
                default:
                    return recipe.model
                }
            }
        case .groundPork:
            return IngredientModel(
                name: "Ground Pork",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .spaghettiWithTomatoSauce,
                    .mixedRice
                ]
            ) { recipe in
                switch recipe {
                case .spaghettiWithTomatoSauce:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add Ground Pork to Pan and sauté", stepIndex: 1)
                default:
                    return recipe.model
                }
            }
        case .romaTomato:
            return IngredientModel(
                name: "Roma Tomatoes",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .spaghettiWithTomatoSauce,
                    .omelette
                ]
            ) { recipe in
                switch recipe {
                case .omelette:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add tomato to pan and sauté", stepIndex: 3)
                case .spaghettiWithTomatoSauce:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add diced tomato to pan and fry", stepIndex: 3)
                default:
                    return recipe.model
                }
            }
        case .monterreyJack:
            return IngredientModel(
                name: "Monterrey Jack",
                prompt: "Say cheese to these recipes!",
                modifiableRecipes: [
                    .spaghettiWithTomatoSauce,
                    .mixedRice,
                    .omelette
                ]
            ) { recipe in
                switch recipe {
                case .spaghettiWithTomatoSauce:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Garnish with Cheese", stepIndex: 6)
                default:
                    return recipe.model
                }
            }
        case .flourTortilla:
            return IngredientModel(
                name: "Flour Tortillas",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .tunaSalad,
                    .mixedRice
                ]
            ) { recipe in
                switch recipe {
                default:
                    return recipe.model
                }
            }
        case .hokkaidoSquash:
            return IngredientModel(
                name: "Hokkaido Squash",
                prompt: "Squash your hunger with these recipes",
                modifiableRecipes: []
            ) { recipe in
                switch recipe {
                case .lentilSoup:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add Squash and sauté together with lentils for a bit", stepIndex: 4)
                default:
                    return recipe.model
                }
            }
        case .chickenBreast:
            return IngredientModel(
                name: "Chicken Breast",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .spaghettiWithTomatoSauce,
                    .mixedRice,
                    .macAndCheese
                ]
            ) { recipe in
                switch recipe {
                case .spaghettiWithTomatoSauce:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add diced chicken to pan and sauté", stepIndex: 1)
                case .mixedRice:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add chicken to pan and sauté", stepIndex: 1)
                default:
                    return recipe.model
                }
            }
        case .coconutMilk:
            return IngredientModel(
                name: "Coconut Milk",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .overnightChiaPudding,
                    .lentilSoup
                ]
            ) { recipe in
                switch recipe {
                case .lentilSoup:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add Coconut Milk to pot", stepIndex: 5)
                default:
                    return recipe.model
                }
            }
        case .canOfApricots:
            return IngredientModel(
                name: "Canned Apricots",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .overnightChiaPudding
                ]
            ) { recipe in
                switch recipe {
                default:
                    return recipe.model
                }
            }
        case .greenBeans:
            return IngredientModel(
                name: "Green Beans",
                prompt: "These recipes have bean waiting for you",
                modifiableRecipes: [
                    .bakedVeggies,
                    .mixedRice
                ]
            ) { recipe in
                switch recipe {
                case .mixedRice:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add green beans and sauté", stepIndex: 2)
                case .bakedVeggies:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add green beans to oven pan", stepIndex: 2)
                default:
                    return recipe.model
                }
            }
        case .potato:
            return IngredientModel(
                name: "Potatoes",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .mixedRice,
                    .lentilSoup
                ]
            ) { recipe in
                switch recipe {
                case .mixedRice:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add potatoes and sauté", stepIndex: 2)
                case .lentilSoup:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add Potatoes and sauté together with lentils for a bit", stepIndex: 2)
                default:
                    return recipe.model
                }
            }
        case .kidneyBeans:
            return IngredientModel(
                name: "Kidney Beans",
                prompt: "These recipes have bean waiting for you",
                modifiableRecipes: [
                    .bakedVeggies,
                    .mixedRice,
                    .lentilSoup
                ]
            ) { recipe in
                switch recipe {
                case .bakedVeggies:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add kidney beans to oven pan", stepIndex: 2)
                case .lentilSoup:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add kidney beans to pot", stepIndex: 5)
                default:
                    return recipe.model
                }
            }
        case .jalapeno:
            return IngredientModel(
                name: "Jalapeño",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .omelette,
                    .lentilSoup,
                    .mixedRice,
                    .macAndCheese
                ]
            ) { recipe in
                switch recipe {
                case .omelette:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add Jalapeno to pan and sauté", stepIndex: 3)
                case .macAndCheese:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add finely chopped Jalapeno to sauce", stepIndex: 4)
                case .mixedRice:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add diced Jalapeno to pan and sauté", stepIndex: 2)
                case .lentilSoup:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add diced Jalapeno to pan and sauté", stepIndex: 1)
                default:
                    return recipe.model
                }
            }
        case .dicedTomatoes:
            return IngredientModel(
                name: "Diced Tomatoes",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .bakedVeggies,
                    .mixedRice
                ]
            ) { recipe in
                switch recipe {
                default:
                    return recipe.model
                }
            }
        case .tortillaChips:
            return IngredientModel(
                name: "Tortilla Chips",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .bakedVeggies,
                    .macAndCheese
                ]
            ) { recipe in
                switch recipe {
                case .macAndCheese:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Crush tortilla chips and add on top of Mac 'n' Cheese", stepIndex: 5)
                case .bakedVeggies:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "10 minutes before finished, add crushed tortilla chips on top", stepIndex: 4)
                default:
                    return recipe.model
                }
            }
        case .sourCream:
            return IngredientModel(
                name: "Sour Cream",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .mixedRice,
                    .lentilSoup
                ]
            ) { recipe in
                switch recipe {
                default:
                    return recipe.model
                }
            }
            
            
            
        case .eggs:
            return IngredientModel(
                name: "Eggs",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .macaroniNoodles:
            return IngredientModel(
                name: "Macaroni Noodles",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .shreddedCheese:
            return IngredientModel(
                name: "Shredded Cheese",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .butter:
            return IngredientModel(
                name: "Butter",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .garlic:
            return IngredientModel(
                name: "Garlic",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .onion:
            return IngredientModel(
                name: "Onions",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .tuna:
            return IngredientModel(
                name: "Tuna",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .rice:
            return IngredientModel(
                name: "Rice",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .spaghettiNoodles:
            return IngredientModel(
                name: "Spaghetti Noodles",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .milk:
            return IngredientModel(
                name: "Milk",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .cannedTomatoes:
            return IngredientModel(
                name: "Canned Tomatoes",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .cheese:
            return IngredientModel(
                name: "Cheese",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .redLentils:
            return IngredientModel(
                name: "Red Lentils",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .mayonnaise:
            return IngredientModel(
                name: "Mayonnaise",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .soySauce:
            return IngredientModel(
                name: "Soy Sauce",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .tomatoPaste:
            return IngredientModel(
                name: "Tomato Paste",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
        case .chiaSeeds:
            return IngredientModel(
                name: "Chia Seeds",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            ) { recipe in
                return recipe.model
            }
            
            
        case .tacoFilling:
            return IngredientModel(
                name: "Taco Filling",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .spaghettiWithTomatoSauce
                ]
            ) { recipe in
                switch recipe {
                case .spaghettiWithTomatoSauce:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add leftover taco filling to sauce", stepIndex: 4)
                default:
                    return recipe.model
                }
            }
        case .cookedChicken:
            return IngredientModel(
                name: "Cooked Chicken",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .omelette,
                    .spaghettiWithTomatoSauce,
                    .mixedRice,
                    .bakedVeggies
                ]
            ) { recipe in
                switch recipe {
                case .omelette:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add Cooked Chicken on top of Omelette", stepIndex: 4)
                case .spaghettiWithTomatoSauce:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add Cooked chicken to sauce", stepIndex: 4)
                case .mixedRice:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add cooked chicken and stir in", stepIndex: 4)
                case .bakedVeggies:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "10 minutes before finished, add cooked chicken on top", stepIndex: 4)
                default:
                    return recipe.model
                }
            }
        case .cookedVeggies:
            return IngredientModel(
                name: "Cooked Veggies",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .omelette,
                    .spaghettiWithTomatoSauce,
                    .mixedRice,
                    .bakedVeggies
                ]
            ) { recipe in
                switch recipe {
                case .omelette:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add Cooked Veggies on top of Omelette", stepIndex: 4)
                case .spaghettiWithTomatoSauce:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add Cooked veggies to sauce", stepIndex: 4)
                case .mixedRice:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "Add cooked veggies and stir in", stepIndex: 4)
                case .bakedVeggies:
                    return modifyRecipeModel(recipe, amount: 100, unit: "grams", step: "10 minutes before finished, add cooked veggies on top", stepIndex: 4)
                default:
                    return recipe.model
                }
            }
        }
    }
    
    private func modifyRecipeModel(
        _ recipe: BTBRecipe,
        amount: CGFloat,
        unit: String,
        step: String,
        stepIndex: Int
    ) -> BTBRecipeModel {
        var ret = recipe.model
        var ingredients = recipe.model.ingredients
        var steps = recipe.model.steps
        let ingredient = BTBIngredient(ingredient: self, amount: amount, unit: unit, isModification: true)
        let step = Step(description: step, isModification: true)
        ingredients.append(ingredient)
        steps.insert(step, at: stepIndex)
        ret.ingredients = ingredients
        ret.steps = steps
        return ret
    }
}
