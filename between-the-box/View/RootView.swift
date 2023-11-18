//
//  RootView.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct RootView: View {
    
    @State private var rootVM = RootVM()
    @State private var accountVM = AccountVM()
    
    var body: some View {
        NavigationStack(path: self.$rootVM.path) {
            Group {
                if self.accountVM.isAccountConnected {
                    HomeScreen(
                        rootVM: self.rootVM
                    )
                } else {
                    RecipeScreen(
                        rootVM: self.rootVM,
                        accountVM: self.accountVM
                    )
                }
            }
            .navigationDestination(for: Screen.self) { screen in
                switch screen {
                case .connectAccount:
                    ConnectAccountScreen(
                        rootVM: self.rootVM,
                        accountVM: self.accountVM
                    )
                case .chooseLeftOver:
                    ChooseLeftoverScreen(
                        rootVM: self.rootVM
                    )
                case .chooseOrder:
                    ChooseOrderScreen(
                        rootVM: self.rootVM
                    )
                case .recipe:
                    RecipeScreen(
                        rootVM: self.rootVM,
                        accountVM: self.accountVM
                    )
                case .recipeList:
                    RecipeListScreen(
                        rootVM: self.rootVM
                    )
                }
            }
        }
    }
}

enum Screen {
    case connectAccount
    case chooseLeftOver
    case chooseOrder
    case recipe
    case recipeList
}

#Preview {
    RootView()
}
