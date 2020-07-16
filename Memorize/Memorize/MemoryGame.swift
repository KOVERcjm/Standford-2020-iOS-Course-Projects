//
//  MemoryGame.swift
//  Memorize
//
//  Created by Kover Cheng on 13/7/20.
//  Copyright © 2020 Kover Cheng. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    struct Card: Identifiable {
        var isFaceUp = true, isMatched = false
        var content: CardContent
        var id: Int
    }
    
    var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: 2 * pairIndex))
            cards.append(Card(content: content, id: 2 * pairIndex + 1))
        }
        
        // MARK: Shuffle the cards
        cards.shuffle()
    }
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
}
