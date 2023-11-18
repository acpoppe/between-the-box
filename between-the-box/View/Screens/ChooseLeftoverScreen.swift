//
//  ChooseLeftoverScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct ChooseLeftoverScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private(set) var rootVM: RootVM
    @State private(set) var chooseLeftoverVM: ChooseLeftoverVM
    
    var body: some View {
        ScreenContainer {
            VStack(spacing: 0) {
                Text("What leftovers do you want to use?")
                    .font(.custom(
                        "SourceSansPro-Regular",
                        size: 36
                    ))
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)
                ForEach(self.chooseLeftoverVM.ingredients) { ingredient in
                    NavigationLink(
                        ingredient.model.name,
                        value: Screen.chooseModifiedRecipe(ingredient: ingredient)
                    )
                    .buttonStyle(CTAButton(outlined: true))
                    .padding(.horizontal, 80)
                    .padding(.top, 18)
                }
                Spacer()
            }
            .padding(.horizontal, 20)
        }
        .applyCustomBackButton {
            self.dismiss()
        }
    }
}

#Preview {
    ChooseLeftoverScreen(
        rootVM: RootVM(),
        chooseLeftoverVM: ChooseLeftoverVM(ingredients: [
            .romaTomatoes,
            .poblanoPeppers
        ])
    )
}
