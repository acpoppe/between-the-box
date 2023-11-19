//
//  RecipeScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct RecipeScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private(set) var rootVM: RootVM
    @State private(set) var recipeVM: RecipeVM
    
    let columnsPerRow = 2
    
    var body: some View {
        ScreenContainer {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    Text(self.recipeVM.recipe.name)
                        .font(.custom("SourceSansPro-Regular", size: 36))
                        .kerning(-0.4)
                    Text("Ingredients")
                        .font(.custom("SourceSansPro-Semibold", size: 20))
                        .kerning(-0.4)
                        .padding(.top, 44)
                    Grid(horizontalSpacing: 10, verticalSpacing: 10) {
                        ForEach(0...(recipeVM.recipe.ingredients.count / self.columnsPerRow), id: \.self) { rowNumber in
                            self.row(rowNumber: rowNumber)
                        }
                    }
                    VStack(spacing: 0) {
                        ForEach(0..<self.recipeVM.recipe.steps.count, id: \.self) { stepIndex in
                            self.createStep(at: stepIndex)
                        }
                    }
                    .padding(.top, 40)
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 35)
            }
            .scrollIndicators(.hidden)
        }
        .applyCustomBackButton {
            self.dismiss()
        }
    }
    
    @ViewBuilder
    private func row(rowNumber: Int) -> some View {
        GridRow {
            ForEach(0..<self.columnsPerRow, id: \.self) { columnNumber in
                let index = columnNumber + (rowNumber * self.columnsPerRow)
                if index < self.recipeVM.recipe.ingredients.count {
                    self.createIngredientView(ingredient: recipeVM.recipe.ingredients[index])
                        .frame(maxWidth: .infinity, alignment: .leading)
                } else {
                    Rectangle().hidden()
                        .frame(maxHeight: 2)
                }
            }
        }
    }
    
    @ViewBuilder
    private func createIngredientView(ingredient: BTBIngredient) -> some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("\(self.formatIngredientAmount(amount: ingredient.amount))\(self.formatIngredientUnit(unit: ingredient.unit))")
                .font(.custom("SourceSansPro-Regular", size: 16))
                .kerning(-0.4)
                .padding(.leading, 8)
                
            Text("\(ingredient.ingredient.model.name)")
                .font(.custom("SourceSansPro-Semibold", size: 16))
                .kerning(-0.4)
                .padding(.leading, 8)
        }
        .overlay {
            HStack {
                Rectangle()
                    .frame(width: 2)
                    .foregroundStyle(HFColor.primary)
                Spacer()
            }
        }
    }
    
    private func formatIngredientAmount(amount: CGFloat) -> String {
        return amount == 0.5 ? "1/2" : "\(amount.formatted())"
    }
    
    private func formatIngredientUnit(unit: String?) -> String {
        guard let unit else {
            return ""
        }
        return " \(unit)"
    }
    
    @ViewBuilder
    private func createStep(at index: Int) -> some View {
        VStack(alignment: .leading) {
            if self.recipeVM.recipe.steps[index].isModification {
                Text("Between the Box Step \(index + 1)")
                    .font(.custom("SourceSansPro-Semibold", size: 16))
                    .kerning(-0.4)
                    .padding(.bottom, 2)
            } else {
                Text("Step \(index + 1)")
                    .font(.custom("SourceSansPro-Semibold", size: 16))
                    .kerning(-0.4)
                    .padding(.bottom, 2)
            }
            Text(self.recipeVM.recipe.steps[index].description)
                .font(.custom("SourceSansPro-Regular", size: 16))
                .kerning(-0.4)
        }
        .padding(10)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background {
            if self.recipeVM.recipe.steps[index].isModification {
                RoundedRectangle(cornerRadius: 8)
                    .fill(HFColor.buttonPressedBackgroundSecondary)
            } else {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.white)
            }
        }
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(HFColor.primary)
        }
        .padding(.bottom, 12)
    }
}

#Preview {
    RecipeScreen(
        rootVM: RootVM(),
        recipeVM: RecipeVM(recipe: BTBRecipe.spaghettiWithTomatoSauce.model)
    )
}
