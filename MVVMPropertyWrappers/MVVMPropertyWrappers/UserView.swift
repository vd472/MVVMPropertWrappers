//
//  UserView.swift
//  MVVMPropertyWrappers
//
//  Created by vijayesha on 05.03.25.
//

import SwiftUI

struct UserView: View {
    @StateObject private var viewModel = UserViewModel() // ✅ View owns ViewModel

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Name: \(viewModel.user.name)")
                Text("Score: \(viewModel.user.score)")
                    .font(.largeTitle)
                
                HStack {
                    Button("-") { viewModel.decrementScore() }
                    Spacer()
                    Button("+") { viewModel.incrementScore() }
                }
                .font(.largeTitle)
                .padding()
                
                Spacer()
                
                HStack {
                    NavigationLink("Go to Profile", destination: ProfileView())
                    Spacer()
                    NavigationLink("Go to Detail", destination: DetailView(viewModel: viewModel))
                }
                .padding()
            }
        }
    }
}

#Preview {
    UserView()
}
