//
//  CreateView.swift
//  OnAppear
//
//  Created by Siri K on 2023-03-17.
//

import SwiftUI

struct CreateView: View {
    @ObservedObject var model: CreateModel
    
    var body: some View {
        VStack {
            Text("Create")
        }
        .onAppear {
            print("CreateView onAppear")
        }
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Completed") {
                    model.completedButtonTapped()
                }
            }
        }
        .padding()
    }
}
