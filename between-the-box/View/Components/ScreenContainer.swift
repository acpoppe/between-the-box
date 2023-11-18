//
//  ScreenContainer.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 18.11.23.
//

import SwiftUI

struct ScreenContainer<Content: View>: View {
    @ViewBuilder let content: () -> Content
    
    var body: some View {
        GeometryReader { geometryProxy in
            Group {
                self.content()
            }
            .frame(maxWidth: .infinity, maxHeight: geometryProxy.size.height)
            .background(Background())
        }
    }
}
