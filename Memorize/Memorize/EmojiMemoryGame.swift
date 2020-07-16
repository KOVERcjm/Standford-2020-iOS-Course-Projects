//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kover Cheng on 13/7/20.
//  Copyright © 2020 Kover Cheng. All rights reserved.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    // @Published is a property wrapper that will automatically call
    // objectWillChange.send() as the variable changed.
    @Published private var memoryGame: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        var emojis = ["🕷", "👻", "🎃", "🤡", "🍬", "🍭", "🦃"]
        emojis.shuffle()
        
        let startNumberOfPairs = Int.random(in: 2...5)
        
        return MemoryGame<String>(numberOfPairsOfCards: startNumberOfPairs) { pairIndex in
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
