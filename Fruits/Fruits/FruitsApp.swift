//
//  FruitsApp.swift
//  Fruits
//
//  Created by Basivi Reddy on 15/06/24.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }        }
    }
}
