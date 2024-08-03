//
//  ViewController.swift
//  mentoria-iOS
//
//  Created by Valmir Garcia on 18/07/24.
//

import UIKit

final class ViewController: UIViewController {
    private lazy var customView = LoginPage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCustomView()
    }
    
    private func setupCustomView() {
        view.addSubview(customView)
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.topAnchor),
            customView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}


