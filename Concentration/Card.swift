//
//  Card.swift
//  Concentration
//
//  Created by Alan Campbell on 06/08/2018.
//  Copyright © 2018 Alan Campbell. All rights reserved.
//

import Foundation

struct Card{
    var isFaceUp = false
    var matched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUUID() -> Int {
        identifierFactory += 1;
        return identifierFactory;
    }
    
    init(){
        self.identifier = Card.getUUID()
    }
}
