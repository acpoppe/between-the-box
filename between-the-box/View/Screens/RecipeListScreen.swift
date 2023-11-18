//
//  RecipeListScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct RecipeListScreen: View {
    
    @State private(set) var rootVM: RootVM
    
    var body: some View {
        Text("Recipe List Screen")
    }
}

#Preview {
    RecipeListScreen(rootVM: RootVM())
}
