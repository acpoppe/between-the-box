//
//  ChooseOrderScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct ChooseOrderScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private(set) var rootVM: RootVM
    @State private(set) var chooseOrderVM = ChooseOrderVM()
    
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
                self.createLeftoverSection(orders: self.chooseOrderVM.lastWeekOrders, sectionTitle: "Last Week's Orders")
                self.createLeftoverSection(orders: self.chooseOrderVM.thisWeekOrders, sectionTitle: "This Week's Orders")
                Spacer()
            }
            .padding(.horizontal, 20)
        }
        .applyCustomBackButton {
            self.dismiss()
        }
    }
    
    @ViewBuilder
    private func createLeftoverSection(orders: [OrderModel], sectionTitle: String) -> some View {
        VStack(spacing: 0) {
            Text(sectionTitle)
                .font(.custom("SourceSansPro-Semibold", size: 24))
            ForEach(orders) { order in
                VStack {
                    NavigationLink(
                        order.recipe.name,
                        value: Screen.chooseLeftOver(ingredients: order.recipe.ingredients)
                    )
                    .buttonStyle(CTAButton(outlined: true))
                    .padding(.horizontal, 80)
                    .padding(.top, 18)
                }
            }
        }
        .padding(.top, 55)
    }
}

#Preview {
    ChooseOrderScreen(rootVM: RootVM())
}
