//
//  MemMatchApp.swift
//  MemMatch
//
//  Created by Sema Topcu on 12/8/24.
//

import SwiftUI

@main
struct MemMatchApp: App {
    let game = EmojiMemMatchGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
