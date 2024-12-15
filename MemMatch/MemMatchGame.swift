//
//  MemMatchGame.swift
//  MemMatch
//
//  Created by Sema Topcu on 12/16/24.
//

import Foundation

struct MemMatchGame<CardContent> {
    var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
