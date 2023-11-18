//
//  ChooseLeftoverScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct ChooseLeftoverScreen: View {
    
    @State private(set) var rootVM: RootVM
    
    var body: some View {
        Text("Choose Leftover Screen")
    }
}

#Preview {
    ChooseLeftoverScreen(rootVM: RootVM())
}
