//
//  Concentration.swift
//  Concentration
//
//  Created by Alan Campbell on 06/08/2018.
//  Copyright © 2018 Alan Campbell. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    
    var indexOfOneandOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int){
        if !cards[index].matched {
            if let matchIndex = indexOfOneandOnlyFaceUpCard, matchIndex != index {
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].matched = true
                    cards[index].matched = true
                }
                cards[index].isFaceUp=true
                indexOfOneandOnlyFaceUpCard=nil
            } else {
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneandOnlyFaceUpCard = index
            }
        }
    }
    
    init(numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards{
            let card = Card()
            cards += [card, card]
        }
        
    }
}
