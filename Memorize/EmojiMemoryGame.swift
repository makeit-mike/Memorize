//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Michael Jones on 7/24/20.
//  Copyright © 2020 Michael Jones. All rights reserved.
//

//import Foundation
import SwiftUI //is also acceptable

/*ViewModel Can Use UI conditionally
 the glue between View and Model... ViewModel.
-Advantage of classes:
    They are easy to share.
        Lives in Heap (has pointers)
    Many Views will share this
-Cons:
    If anything sharing messes this, it can mess up everything
 */
class EmojiMemoryGame { //Note this is a class... not a struct
    
    
    
    //var is OPEN door, but adding a modifier can fix that (private?)
    //private var... is CLOSED door
    //private(set)... is "glass" door. everyone can see it, but cant access it
    //Choose Private, but create more func/vars to help the view interpret intents...
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 3)
   
    // MARK: - Access Model
    var cards: Array<MemoryGame<String>.Card> {
        /* return */ model.cards //oneliners dont need "return" it is implied
    }
    
    // MARK: - Intent
    /*viewModel is all about figuring out INTENT(s)     */
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card) //expresses intent to choose a card.
    }
}
