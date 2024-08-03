//
//  StartViewRepresentable.swift
//  mentoria-iOS
//
//  Created by Valmir Garcia on 18/07/24.
//

import Foundation
import SwiftUI

struct ArticleStartViewRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = UINavigationController

    func makeUIViewController(context: Context) -> UINavigationController {
        let navigationController = UINavigationController()
        let coordinator = AppCoordinator(rootViewController: navigationController)
        coordinator.start()
        return navigationController
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
    }
}
