//
//  EmojiMemMatchGame.swift
//  MemMatch
//
//  Created by Sema Topcu on 12/16/24.
//

import SwiftUI


func makeCardContent(Index: Int) -> String {
    return "🤠"
}

class EmojiMemMatchGame {
    private var model: MemMatchGame<String> = MemMatchGame<String>(numberOfPairsOfCards: 4, createCardContent: makeCardContent)
    
    var cards: Array<MemMatchGame<String>.Card> {
        return model.cards
    }
}
