//
//  OnAppearApp.swift
//  OnAppear
//
//  Created by Siri K on 2023-03-17.
//

import SwiftUI

@main
struct OnAppearApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MenuView(model: MenuModel())
                    .navigationBarTitle("OnAppearBehaviour")
                    .onAppear {
                        print("On appear at creation")
                    }
            }
        }
    }
}
