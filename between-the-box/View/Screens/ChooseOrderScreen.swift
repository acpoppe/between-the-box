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
            VStack(spacing: 30) {
                Text("Which meal would you like to use leftovers from?")
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                ForEach(self.chooseOrderVM.placeholderOrders) { order in
                    VStack {
                        NavigationLink(
                            order.recipe.name,
                            value: Screen.chooseLeftOver(ingredients: order.recipe.ingredients)
                        )
                        .buttonStyle(MainContentButton())
                        HStack {
                            Spacer()
                            Text("Delivered: " + order.date.formatted(date: .abbreviated, time: .omitted))
                                .foregroundStyle(Color(red: 120/255, green: 120/255, blue: 120/255))
                                .font(.system(size: 14))
                        }
                    }
                }
            }
            .padding(.horizontal, 20)
        }
        .applyCustomBackButton {
            self.dismiss()
        }
    }
}

#Preview {
    ChooseOrderScreen(rootVM: RootVM())
}
