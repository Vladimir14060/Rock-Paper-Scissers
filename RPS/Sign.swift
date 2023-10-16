//
//  Sign.swift
//  RPS
//
//  Created by VanMac on 14.10.2023.
//

import Foundation
import UIKit

func randomSign() -> Sign {
    let randomNumber = Int.random(in: 0...2)
    
    if randomNumber == 0 {
        return .rock
    } else if randomNumber == 1 {
        return .paper
    } else {
        return .scissors
    }
    
}

enum Sign {
    case rock, paper, scissors
    
    var image: UIImage {
        switch self {
        case .rock:
            return Game().rockImage!
        case .paper:
            return Game().paperImage!
        case .scissors:
            return Game().scissorsImage!
        }
    }
    
    func takeTurn(_ oposite: Sign) -> GameState {
        switch (self, oposite) {
        case (.rock, .scissors),
            (.paper, .rock),
            (.scissors, .paper):
            return .win
        case (.rock, .rock),
            (.paper, .paper),
            (.scissors, .scissors):
            return .draw
        default:
            return .lose
        }
    }
}
