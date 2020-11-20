//
//  GameState.swift
//  RPS
//
//  Created by Arghya on 11/19/20.
//  Copyright © 2020 Arghya. All rights reserved.
//

import Foundation

enum GameState {
    case start
    case win
    case lose
    case draw
    
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors?"
        case .win:
            return "You Won!"
        case .lose:
            return "You Lost!"
        case .draw:
            return "It's a Draw!"
    }
            
    }

}
