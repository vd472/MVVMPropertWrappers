//
//  DetailView.swift
//  MVVMPropertyWrappers
//
//  Created by vijayesha on 05.03.25.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var viewModel: UserViewModel // ✅ Receives ViewModel

    var body: some View {
        VStack {
            Text("User: \(viewModel.user.name)")
            Text("Score: \(viewModel.user.score)")

            Button("Increase Score") {
                viewModel.incrementScore()
            }
        }
    }
}


