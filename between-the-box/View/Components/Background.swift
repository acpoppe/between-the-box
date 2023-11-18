//
//  Background.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import SwiftUI

struct Background: View {
    var body: some View {
        ZStack {
            Color.white
            VStack {
                Spacer()
                Image("BackgroundBlob")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .ignoresSafeArea()
        .opacity(0.7)
    }
}

#Preview {
    Background()
}
