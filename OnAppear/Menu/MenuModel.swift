//
//  MenuModel.swift
//  OnAppear
//
//  Created by Siri K on 2023-03-17.
//

import SwiftUI

struct Menu: Identifiable {
    var id: String { name }
    
    let name: String
}

class MenuModel: ObservableObject {
    @Published var menus: [Menu]
    @Published var isCreatePresented = false
    @Published var isSheetPresented = false
    @Published var isNavLinkPlusUsed: Bool?
    
    init() {
        menus = [
            Menu(name: "Globe"),
            Menu(name: "Two")
        ]
    }
    
    func onAppear() {
        print("On appear called")
    }
}

extension MenuModel {
    func createButtonTapped() {
        isCreatePresented = true
    }
    
    func createCompleted() {
        isCreatePresented = false
    }
    
    func sheetButtonTapped() {
        isSheetPresented = true
    }
    
    func sheetCompleted() {
        isSheetPresented = false
    }
    
    func tapped(menu: Menu) {

    }
}
