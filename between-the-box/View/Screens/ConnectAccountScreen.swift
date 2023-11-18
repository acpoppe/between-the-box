//
//  ConnectAccountScreen.swift
//  Between the Box
//
//  Created by Allison Poppe - Work on 17.11.23.
//

import SwiftUI

struct ConnectAccountScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private(set) var rootVM: RootVM
    @State private(set) var accountVM: AccountVM
    @State private var connectAccountVM = ConnectAccountVM()
    
    var body: some View {
        ScreenContainer {
            VStack(spacing: 0) {
                Text("Log in")
                    .font(.custom("SourceSansPro-Bold", size: 40))
                    .kerning(-0.4)
                    .multilineTextAlignment(.center)
                    .padding(.top, 140)
                    .padding(.bottom, 70)
                TextField(text: self.$connectAccountVM.email) {
                    Text("Email")
                }
                .padding(6)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(HFColor.primary)
                }
                .textInputAutocapitalization(.never)
                .padding(.bottom, 12)
                
                SecureField(text: self.$connectAccountVM.password) {
                    Text("Password")
                }
                .padding(6)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(HFColor.primary)
                }
                .padding(.bottom, 24)
                
                if !self.connectAccountVM.isLoggingIn {
                    Button {
                        if self.connectAccountVM.email == "hello@fresh.com" {
                            self.connectAccountVM.isLoggingIn = true
                            Task {
                                try await Task.sleep(for: .seconds(0.5))
                                self.connectAccountVM.isLoggingIn = false
                                self.accountVM.isAccountConnected = true
                                self.rootVM.path = []
                            }
                        }
                    } label: {
                        Text("Log in")
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 24)
                    .buttonStyle(CTAButton())
                } else {
                    ProgressView()
                }
                Spacer()
            }
            .padding(.horizontal, 72)
        }
        .applyCustomBackButton {
            self.dismiss()
        }
    }
}

#Preview {
    ConnectAccountScreen(
        rootVM: RootVM(),
        accountVM: AccountVM()
    )
}
