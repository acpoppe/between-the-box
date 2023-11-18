//
//  HomeScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct HomeScreen: View {
    
    @State private(set) var rootVM: RootVM
    
    var body: some View {
        Text("Home Screen")
    }
}

#Preview {
    HomeScreen(rootVM: RootVM())
}
