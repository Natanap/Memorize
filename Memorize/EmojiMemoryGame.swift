//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Natanael Alves Pereira on 01/03/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    static let emojis = ["🚗", "🏎" ,"🚐", "🚛","🛻", "🛺", "🏍", "🛵", "🦼", "🚲", "🦽", "🚓", "🚎", "🚊", "🚆"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
           emojis[pairIndex]
        }
        
    }
    
    // @published notifica sobre alteracoes
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card){
        objectWillChange.send()
        model.choose(card)
    }
}
