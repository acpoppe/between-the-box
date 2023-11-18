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
                    HomeScreen()
                } else {
                    RecipeScreen(
                        rootVM: self.rootVM,
                        accountVM: self.accountVM
                    )
                }
            }
            .navigationDestination(for: Screen.self) { screen in
                switch screen {
                case .recipe:
                    RecipeScreen(
                        rootVM: self.rootVM,
                        accountVM: self.accountVM
                    )
                case .connectAccount:
                    ConnectAccountScreen(
                        rootVM: self.rootVM
                    )
                }
            }
        }
    }
}

enum Screen {
    case recipe
    case connectAccount
}

#Preview {
    RootView()
}
