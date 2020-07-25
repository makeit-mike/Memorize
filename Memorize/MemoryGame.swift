//
//  MemoryGame.swift
//  Memorize
//
//  Created by Michael Jones on 7/24/20.
//  Copyright © 2020 Michael Jones. All rights reserved.
//

import Foundation
/*doesnt import swiftUI.... becuase it isnt a UI*/

/*model TOTALLY UI INDEPENDENT*/
struct MemoryGame<CardContent> {
    /* this could also be a Database, or Class, etc*/
    /*what does this model do?*/
    
    var cards: Array<Card >
    
    func choose(card: Card) {
        print("Card chosen: \(card)") // embedding var in literal
    }
    
    //you can make multiple different Init() with different initial params (think roundedRectangle)
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex) //use let anytime you dont need to mutate
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content)) //making a pair
        }
    }
    
    struct Card {
        /* MemoryGame.Card */
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent /* We dont really care what the content is, specify above.*/
    }
}
