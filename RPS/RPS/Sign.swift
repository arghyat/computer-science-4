//
//  Sign.swift
//  RPS
//
//  Created by Arghya on 11/19/20.
//  Copyright © 2020 Arghya. All rights reserved.
//

import Foundation


func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock, paper, scissors
    
    var emoji: String {
        switch self {  
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
    }
    func gameState(against opponentSign: Sign) -> GameState {
        if opponentSign == self {
            return .draw
        }
        switch self {
        case .rock:
            if opponentSign == .scissors {
                return .win
            }
        case .paper:
                if opponentSign == .rock {
                    return .win
            }
        case .scissors:
            if opponentSign == . paper {
                return .win
            }
            
        }
            
}


/*func takeTurn(_ opponent: Sign) -> GameState {
        switch self {
        case .rock:
            switch opponent {
            case .rock:
                return GameState.draw
            case .paper:
                return GameState.lose
            case .scissors:
                return GameState.win
            }
        case .paper:
            switch opponent {
            case .rock:
                return GameState.win
            case .paper:
                return GameState.draw
            case .scissors:
                return GameState.lose
            }
        case .scissors:
            switch opponent {
            case .rock:
                return GameState.lose
            case .paper:
                return GameState.win
            case .scissors:
                return GameState.draw
            }
        }
    }
}*/
    }
}
