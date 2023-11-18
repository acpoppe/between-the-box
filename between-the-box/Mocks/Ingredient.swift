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
    
    // taco filling
    // cooked chicken
    // cooked veggies
    
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
            )
        case .groundPork:
            return IngredientModel(
                name: "Ground Pork",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .spaghettiWithTomatoSauce,
                    .mixedRice
                ]
            )
        case .romaTomato:
            return IngredientModel(
                name: "Roma Tomatoes",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .spaghettiWithTomatoSauce,
                    .omelette
                ]
            )
        case .monterreyJack:
            return IngredientModel(
                name: "Monterrey Jack",
                prompt: "Say cheese to these recipes!",
                modifiableRecipes: [
                    .spaghettiWithTomatoSauce,
                    .mixedRice,
                    .omelette
                ]
            )
        case .flourTortilla:
            return IngredientModel(
                name: "Flour Tortillas",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .tunaSalad,
                    .mixedRice
                ]
            )
        case .hokkaidoSquash:
            return IngredientModel(
                name: "Hokkaido Squash",
                prompt: "Squash your hunger with these recipes",
                modifiableRecipes: []
            )
        case .chickenBreast:
            return IngredientModel(
                name: "Chicken Breast",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .spaghettiWithTomatoSauce,
                    .mixedRice,
                    .macAndCheese
                ]
            )
        case .coconutMilk:
            return IngredientModel(
                name: "Coconut Milk",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .overnightChiaPudding,
                    .lentilSoup
                ]
            )
        case .canOfApricots:
            return IngredientModel(
                name: "Canned Apricots",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .overnightChiaPudding
                ]
            )
        case .greenBeans:
            return IngredientModel(
                name: "Green Beans",
                prompt: "These recipes have bean waiting for you",
                modifiableRecipes: [
                    .bakedVeggies,
                    .mixedRice
                ]
            )
        case .potato:
            return IngredientModel(
                name: "Potatoes",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .mixedRice,
                    .lentilSoup
                ]
            )
        case .kidneyBeans:
            return IngredientModel(
                name: "Kidney Beans",
                prompt: "These recipes have bean waiting for you",
                modifiableRecipes: [
                    .bakedVeggies,
                    .mixedRice,
                    .lentilSoup
                ]
            )
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
            )
        case .dicedTomatoes:
            return IngredientModel(
                name: "Diced Tomatoes",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .bakedVeggies,
                    .mixedRice
                ]
            )
        case .tortillaChips:
            return IngredientModel(
                name: "Tortilla Chips",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .mixedRice,
                    .bakedVeggies,
                    .macAndCheese
                ]
            )
        case .sourCream:
            return IngredientModel(
                name: "Sour Cream",
                prompt: "Try one of these great recipes",
                modifiableRecipes: [
                    .mixedRice,
                    .lentilSoup
                ]
            )
            
        case .eggs:
            return IngredientModel(
                name: "Eggs",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .macaroniNoodles:
            return IngredientModel(
                name: "Macaroni Noodles",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .shreddedCheese:
            return IngredientModel(
                name: "Shredded Cheese",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .butter:
            return IngredientModel(
                name: "Butter",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .garlic:
            return IngredientModel(
                name: "Garlic",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .onion:
            return IngredientModel(
                name: "Onions",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .tuna:
            return IngredientModel(
                name: "Tuna",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .rice:
            return IngredientModel(
                name: "Rice",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .spaghettiNoodles:
            return IngredientModel(
                name: "Spaghetti Noodles",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .milk:
            return IngredientModel(
                name: "Milk",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .cannedTomatoes:
            return IngredientModel(
                name: "Canned Tomatoes",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .cheese:
            return IngredientModel(
                name: "Cheese",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .redLentils:
            return IngredientModel(
                name: "Red Lentils",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .mayonnaise:
            return IngredientModel(
                name: "Mayonnaise",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .soySauce:
            return IngredientModel(
                name: "Soy Sauce",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .tomatoPaste:
            return IngredientModel(
                name: "Tomato Paste",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        case .chiaSeeds:
            return IngredientModel(
                name: "Chia Seeds",
                prompt: "Try one of these great recipes",
                modifiableRecipes: []
            )
        }
    }
}
