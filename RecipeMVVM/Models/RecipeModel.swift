//
//  RecipeMode.swift
//  RecipeMVVM
//
//  Created by Anup Saud on 2025-03-21.
//

import Foundation

struct RecipeModel: Identifiable{
    let id = UUID()
    let name: String
    let caloriesPer100Grams: Int
    let recipe: String
    let recipeImage: String
    let recipeURL: String
}
