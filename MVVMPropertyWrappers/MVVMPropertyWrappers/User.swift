//
//  User.swift
//  MVVMPropertyWrappers
//
//  Created by vijayesha on 05.03.25.
//

import Foundation

struct User: Identifiable {
 let id = UUID() // Unique identifier
 var name: String
 var score: Int
}
