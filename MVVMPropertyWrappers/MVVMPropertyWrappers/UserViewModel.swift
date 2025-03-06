//
//  UserViewModel.swift
//  MVVMPropertyWrappers
//
//  Created by vijayesha on 05.03.25.
//

import SwiftUI

class UserViewModel: ObservableObject {
    @Published var user: User = User(name: "Matt", score: 100) // Default user

    func incrementScore() {
        user.score += 10
    }

    func decrementScore() {
        user.score -= 10
    }
}
