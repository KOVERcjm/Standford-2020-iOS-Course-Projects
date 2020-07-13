//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kover Cheng on 13/7/20.
//  Copyright © 2020 Kover Cheng. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    private var memoryGame: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🕷", "👻", "🎃"]
        
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    // MARK: - Access the model
    var cards: Array<MemoryGame<String>.Card> {
        memoryGame.cards
    }
    
    // MARK: - User Intent
    func choose(card: MemoryGame<String>.Card) {
        memoryGame.choose(card: card)
    }
}
