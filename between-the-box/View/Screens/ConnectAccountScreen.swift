//
//  ConnectAccountScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct ConnectAccountScreen: View {
    
    @State private(set) var rootVM: RootVM
    @State private(set) var accountVM: AccountVM
    @State private var connectAccountVM = ConnectAccountVM()
    
    var body: some View {
        VStack(spacing: 16) {
            TextField(text: self.$connectAccountVM.email) {
                Text("Email")
            }
            .padding(6)
            .overlay {
                RoundedRectangle(cornerRadius: 4)
                    .stroke(.gray)
            }
            .textInputAutocapitalization(.never)
            
            SecureField(text: self.$connectAccountVM.password) {
                Text("Password")
            }
            .padding(6)
            .overlay {
                RoundedRectangle(cornerRadius: 4)
                    .stroke(.gray)
            }
            
            Button {
                if self.connectAccountVM.email == "hello@fresh.com" {
                    self.accountVM.isAccountConnected = true
                    self.rootVM.path = []
                }
            } label: {
                Text("Log in")
            }
            .frame(maxWidth: .infinity)
        }
        .buttonStyle(CTAButton())
        .padding(.horizontal, 20)
    }
}

#Preview {
    ConnectAccountScreen(
        rootVM: RootVM(),
        accountVM: AccountVM()
    )
}
