//
//  MVVMPropertyWrappersApp.swift
//  MVVMPropertyWrappers
//
//  Created by vijayesha on 05.03.25.
//

import SwiftUI

@main
struct MVVMPropertyWrappersApp: App {
    @StateObject private var viewModel = UserViewModel() // ✅ Created once
    
    var body: some Scene {
        WindowGroup {
            UserView()
                .environmentObject(viewModel) 
        }
    }
}
