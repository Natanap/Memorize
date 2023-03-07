//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Natanael Alves Pereira on 27/02/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(game: game)
        }
    }
}
