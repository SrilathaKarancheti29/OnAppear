//
//  SettingsView.swift
//  OnAppear
//
//  Created by Siri K on 2023-03-17.
//

import SwiftUI

struct SettingsView: View {
    @ObservedObject var model: SettingsModel
    
    var body: some View {
        VStack {
            Text("Settings")
        }
        .onAppear {
            print("Settings onAppear")
        }
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Completed") {
                    model.settingsButtonTapped()
                }
            }
        }
        .padding()
    }
}
