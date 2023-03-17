//
//  SettingsModel.swift
//  OnAppear
//
//  Created by Siri K on 2023-03-17.
//

import SwiftUI

class SettingsModel: ObservableObject {
    var settingsCompleted: () -> Void
    
    init(settingsCompleted: @escaping () -> Void) {
        self.settingsCompleted = settingsCompleted
    }
}

extension SettingsModel {
    func settingsButtonTapped() {
        settingsCompleted()
    }
}
