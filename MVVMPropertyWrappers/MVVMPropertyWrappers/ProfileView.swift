//
//  ProfileView.swift
//  MVVMPropertyWrappers
//
//  Created by vijayesha on 07.03.25.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: UserViewModel // ✅ Access ViewModel globally

    var body: some View {
        VStack {
            Text("Hello, \(viewModel.user.name)!")
            Text("Your score: \(viewModel.user.score)")

            Button("Increase") { viewModel.incrementScore() }
        }
    }
}
