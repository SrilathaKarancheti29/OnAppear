//
//  CreateModel.swift
//  OnAppear
//
//  Created by Siri K on 2023-03-17.
//

import SwiftUI

class CreateModel: ObservableObject {
    var createCompleted: () -> Void
    
    init(createCompleted: @escaping () -> Void) {
        self.createCompleted = createCompleted
    }
}

extension CreateModel {
    func completedButtonTapped() {
        createCompleted()
    }
}
