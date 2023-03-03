//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Natanael Alves Pereira on 01/03/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let emojis = ["🚗", "🏎" ,"🚐", "🚛","🛻", "🛺", "🏍", "🛵", "🦼", "🚲", "🦽", "🚓", "🚎", "🚊", "🚆"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
           emojis[pairIndex]
        }
        
    }
    
    // @published notifica sobre alteracoes
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card){
        objectWillChange.send()
        model.choose(card)
    }
}
