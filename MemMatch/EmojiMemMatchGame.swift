//
//  EmojiMemMatchGame.swift
//  MemMatch
//
//  Created by Sema Topcu on 12/16/24.
//

import SwiftUI

class EmojiMemMatchGame {
    static let emojis = ["🚀", "⛵️", "✈️", "🚗", "🚲", "🚠", "🚛", "🛴", "🚆", "🛳️", "🚁", "🛵", "🚕"]
    
    static func createMemMatchGame() -> MemMatchGame<String> {
        MemMatchGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemMatchGame<String> = createMemMatchGame()
    
    var cards: Array<MemMatchGame<String>.Card> {
        model.cards
    }
    
    
    // MARK: - Intent(s)
    
    
    func choose(_ card: MemMatchGame<String>.Card) {
        model.choose(card)
    }
}
