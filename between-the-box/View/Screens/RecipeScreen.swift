//
//  RecipeScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct RecipeScreen: View {
    
    @State private(set) var rootVM: RootVM
    
    var body: some View {
        Text("Recipe Screen")
    }
}

#Preview {
    RecipeScreen(rootVM: RootVM())
}
