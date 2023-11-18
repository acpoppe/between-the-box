//
//  ConnectAccountScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct ConnectAccountScreen: View {
    
    @State private(set) var rootVM: RootVM
    
    var body: some View {
        Text("Connect Account Screen")
    }
}

#Preview {
    ConnectAccountScreen(rootVM: RootVM())
}
