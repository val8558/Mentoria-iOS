//
//  MyNameApp.swift
//  mentoria-iOS
//
//  Created by Valmir Garcia on 18/07/24.
//

import Foundation
import SwiftUI

@main
struct ArticleWaveApp: App {
    var body: some Scene {
        WindowGroup {
            ArticleStartViewRepresentable()
                .ignoresSafeArea()
        }
    }
}
