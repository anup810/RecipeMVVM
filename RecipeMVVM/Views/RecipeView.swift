//
//  ContentView.swift
//  RecipeMVVM
//
//  Created by Anup Saud on 2025-03-21.
//

import SwiftUI

struct RecipeView: View {
    @StateObject var recipeViewModel : RecipeViewModel = RecipeViewModel()
    var body: some View {
        NavigationView {
            List(self.recipeViewModel.recipeModel){item in
                NavigationLink {
                    ShowRecipeView(
                        theRecipe: item.recipe,
                        imageName: item.recipeImage,
                        recipeURL: item.recipeURL
                    )
                } label: {
                    ListItemView(
                        name: item.name,
                        caloriesPer100Grams: item.caloriesPer100Grams,
                        imageName: item.recipeImage
                    )
                    .navigationBarTitleDisplayMode(.inline)
                }
 
            }
            .navigationTitle("Recipes")
        }
    }
}

#Preview {
    RecipeView()
}
