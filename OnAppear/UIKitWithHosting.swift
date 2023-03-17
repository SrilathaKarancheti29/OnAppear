//
//  UIKitWithHosting.swift
//  OnAppear
//
//  Created by Siri K on 2023-03-17.
//

import UIKit
import SwiftUI

class UIKitHostingViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

extension UIKitHostingViewController {
    func setup() {
        let view = MenuView(model: MenuModel())
        let hostingController = UIHostingController(rootView: view)
        
        addChild(hostingController)
        self.view.addSubview(hostingController.view)
        // hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        hostingController.didMove(toParent: self)
    }
}
