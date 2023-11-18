//
//  RecipeListScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct RecipeListScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private(set) var rootVM: RootVM
    
    var body: some View {
        ScreenContainer {
            VStack(spacing: 0) {
                ScrollView {
                    ForEach(BTBRecipe.allCases) { recipe in
                        self.createRecipeButton(recipe: recipe)
                            .padding(.bottom, 17)
                    }
                    .padding(2)
                }
                .padding(.bottom, -2)
                .scrollIndicators(.hidden)
                .padding(.top, 80)
                .padding(.horizontal, 42)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Recipe Book")
                    .font(.custom("SourceSansPro-Regular", size: 36))
                    .kerning(-0.4)
            }
        }
        .applyCustomBackButton {
            self.dismiss()
        }
    }
    
    @ViewBuilder
    private func createRecipeButton(recipe: BTBRecipe) -> some View {
        NavigationLink(value: Screen.recipe(recipe: recipe)) {
            HStack {
                VStack(alignment: .leading) {
                    Text(recipe.model.name)
                        .tint(.black)
                        .font(.custom("SourceSansPro-Regular", size: 20))
                        .multilineTextAlignment(.leading)
                    Text(recipe.model.description)
                        .tint(HFColor.alternativeText)
                        .font(.custom("SourceSansPro-Regular", size: 14))
                        .multilineTextAlignment(.leading)
                }
                .padding(.horizontal, 10)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 8)
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(HFColor.primary)
            }
        }
    }
}

#Preview {
    RecipeListScreen(rootVM: RootVM())
}
