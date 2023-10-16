//
//  UILabel + extension.swift
//  RPS
//
//  Created by VanMac on 15.10.2023.
//

import UIKit

extension UILabel {
    func makeMeStatusLabel() {
        self.textAlignment = .center
        self.textColor = .black
        self.font = UIFont.boldSystemFont(ofSize: 30)
        self.adjustsFontSizeToFitWidth = true
        self.sizeToFit()
    }
    
    func makeMeCounterLabel() {
        self.text = "\(Game().numLabel)"
        self.textAlignment = .center
        self.textColor = .black
        self.font = UIFont.boldSystemFont(ofSize: 100)
        self.adjustsFontSizeToFitWidth = true
        self.sizeToFit()
    }
    
    func makeMeCounterWinLabel() {
        self.text = "Win: \(Game().numWin)"
        self.textAlignment = .center
        self.textColor = .black
        self.font = UIFont.boldSystemFont(ofSize: 30)
        self.adjustsFontSizeToFitWidth = true
        self.sizeToFit()
    }
    
    func makeMeCounterLoseLabel() {
        self.text = "Lose: \(Game().numWin)"
        self.textAlignment = .center
        self.textColor = .black
        self.font = UIFont.boldSystemFont(ofSize: 30)
        self.adjustsFontSizeToFitWidth = true
        self.sizeToFit()
    }
    
    func makeMeCounterDrawLabel() {
        self.text = "Draw: \(Game().numWin)"
        self.textAlignment = .center
        self.textColor = .black
        self.font = UIFont.boldSystemFont(ofSize: 30)
        self.adjustsFontSizeToFitWidth = true
        self.sizeToFit()
    }
    
    func makeMeGameLabel() {
        self.text = "Rock Paper Scissors"
        self.textAlignment = .center
        self.textColor = .black
        self.font = UIFont.boldSystemFont(ofSize: 30)
        self.adjustsFontSizeToFitWidth = true
        self.sizeToFit()
    }
}
