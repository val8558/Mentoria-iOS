//
//  Font.swift
//  mentoria-iOS
//
//  Created by Valmir Garcia on 07/08/24.
//

import Foundation
import UIKit
extension UIFont {
    
    static func roboto(size: CGFloat, weight: UIFont.Weight = .regular) -> UIFont {
        switch weight {
        case .bold:
            return UIFont(name: "Roboto-Black", size: size) ?? .systemFont(ofSize: size, weight: weight)
        case .medium:
            return UIFont(name: "Roboto-Medium", size: size) ?? .systemFont(ofSize: size, weight: weight)
        default:
            return UIFont(name: "Roboto-Regular", size: size) ?? .systemFont(ofSize: size, weight: weight)
            
        }
    }
}

