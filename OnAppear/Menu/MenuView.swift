//
//  MenuView.swift
//  OnAppear
//
//  Created by Siri K on 2023-03-17.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var model: MenuModel
    
    var body: some View {
        List {
            ForEach(model.menus) { menu in
                Row(menu: menu)
                    .onTapGesture {
                        model.tapped(menu: menu)
                    }
            }
        }
        .navigationViewStyle(.stack)
        .listStyle(.grouped)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                NavigationLink("Settings") {
                    SettingsView(model: SettingsModel(settingsCompleted: {
                        // Not used
                    }))
                }
            }
            
            ToolbarItem(placement: .primaryAction) {
                Button("Create") {
                    model.createButtonTapped()
                }
            }
            ToolbarItem(placement: .secondaryAction) {
                Button("Sheet") {
                    model.sheetButtonTapped()
                }
            }
            ToolbarItem(placement: .secondaryAction) {
                NavigationLink(
                    "NavLink++",
                    destination: CreateView(model: CreateModel() {
                        model.createCompleted()
                    }),
                    tag: true,
                    selection: $model.isNavLinkPlusUsed
                )
            }
        }
        .fullScreenCover(isPresented: $model.isCreatePresented) {
            NavigationView {
                CreateView(model: CreateModel() {
                    model.createCompleted()
                })
                .navigationBarTitle("Create")
            }
        }
        .sheet(isPresented: $model.isSheetPresented) {
            CreateView(model: CreateModel() {
                model.sheetCompleted()
            })
            .navigationBarTitle("Create")
        }
        .onAppear {
            print("MenuView onAppear")
            model.onAppear()
        }
    }
}

struct Row: View {
    let menu: Menu
    
    var body: some View {
        HStack {
            Text(menu.name)
            Spacer()
        }
        .contentShape(Rectangle()) // So the full row is tappable
        .background(.white)
        .onAppear {
            print("Row onAppear")
        }
    }
}
