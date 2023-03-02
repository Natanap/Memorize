//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Natanael Alves Pereira on 01/03/23.
//

import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["🚗", "🏎" ,"🚐", "🚛","🛻", "🛺", "🏍", "🛵", "🦼", "🚲", "🦽", "🚓", "🚎", "🚊", "🚆"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
        
    }
    
    var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
