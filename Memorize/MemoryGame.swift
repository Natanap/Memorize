//
//  MemoryGame.swift
//  Memorize
//
//  Created by Natanael Alves Pereira on 01/03/23.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        
    }
}
