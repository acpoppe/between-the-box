//
//  HomeScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct HomeScreen: View {
    
    @State private(set) var rootVM: RootVM
    @State private(set) var accountVM: AccountVM
    
    var body: some View {
        ScreenContainer {
            VStack(spacing: 0) {
                Text(
                    accountVM.isAccountConnected ?
                        "Hey, Allison" :
                        "What’s between the box today?"
                )
                .font(.custom("SourceSansPro-Bold", size: 40))
                .kerning(-0.4)
                .multilineTextAlignment(.center)
                .padding(.top, 140)
                .padding(.horizontal, 58)
                    
                VStack(spacing: 20) {
                    if accountVM.isAccountConnected {
                        NavigationLink(
                            "Use My Leftovers",
                            value: Screen.chooseOrder
                        )
                        .buttonStyle(CTAButton())
                    } else {
                        NavigationLink(
                            "Connect Your Account",
                            value: Screen.connectAccount
                        )
                        .buttonStyle(CTAButton())
                    }
                    NavigationLink(
                        "Show Recipes",
                        value: Screen.recipeList
                    )
                    .buttonStyle(CTAButton(outlined: true))
                }
                .padding(.top, 76)
                .padding(.horizontal, 100)
            }
            .frame(maxHeight: .infinity, alignment: .top)
        }
    }
}

#Preview {
    HomeScreen(
        rootVM: RootVM(),
        accountVM: AccountVM()
    )
}
