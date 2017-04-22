//
//  GameChoice.swift
//  RockPaperScissor
//
//  Created by iosdev on 11.4.2017.
//  Copyright © 2017 mokhtarz. All rights reserved.
//

import Foundation

enum GameChoice{
    
    case Rock, Paper, Scissors
    
    init() {
        switch (arc4random_uniform(3)){
        case 0:
            self = .Rock
        
        case 1:
            self = .Paper
            
        default:
            self = .Scissors
        }
    }
}
