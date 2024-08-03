//
//  AppCoodinator.swift
//  mentoria-iOS
//
//  Created by Valmir Garcia on 18/07/24.
//

import Foundation
import SafariServices
import UIKit

final class AppCoordinator {
    private let rootViewController: UINavigationController

    init(rootViewController: UINavigationController) {
        self.rootViewController = rootViewController
    }

    func start() {
        let controller = ViewController()
        rootViewController.pushViewController(controller, animated: false)
    }
}
