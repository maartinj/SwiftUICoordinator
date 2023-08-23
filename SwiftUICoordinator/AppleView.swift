//
//  AppleView.swift
//  SwiftUICoordinator
//
//  Created by Alex Nagy on 29.01.2023.
//

// !!! 15:38 TBD !!!

import SwiftUI

struct AppleView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List {
            Button("Push 🍌") {
                coordinator.push(.banana)
            }
            Button("Present 🍋") {
                coordinator.present(sheet: .lemon)
            }
            Button("Present 🫒") {
                coordinator.present(fullScreenCover: .olive)
            }
        }
        .navigationTitle("🍎")
    }
}

struct AppleView_Previews: PreviewProvider {
    static var previews: some View {
        AppleView()
    }
}
