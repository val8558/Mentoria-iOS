//
//  ViewController.swift
//  mentoria-iOS
//
//  Created by Valmir Garcia on 18/07/24.
//

import UIKit

final class ViewController: UIViewController {
    private lazy var customView = NewLoginPage()
    
    override func loadView() {
        view = customView
    }
    
}


