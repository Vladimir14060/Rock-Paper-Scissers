//
//  UIButton + extansion.swift
//  RPS
//
//  Created by VanMac on 14.10.2023.
//

import UIKit

extension UIButton {
    func makeMePlayGameButton() {
        self.setTitle("Play", for: .normal)
        self.setTitleColor(.black, for: .normal)
        self.layer.cornerRadius = 14
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.black.cgColor
        self.backgroundColor = .white
    }
    
    func makeMeResultGameButton() {
        self.setTitle("Result", for: .normal)
        self.setTitleColor(.black, for: .normal)
        self.layer.cornerRadius = 14
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.black.cgColor
        self.backgroundColor = .white
    }
    
    func makeMeRockButton() {
        self.setBackgroundImage(Game().rockImage, for: .normal)
        self.layer.cornerRadius = 14
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.black.cgColor
        self.backgroundColor = .white
    }
    
    func makeMePaperButton() {
        self.setBackgroundImage(Game().paperImage, for: .normal)
        self.layer.cornerRadius = 14
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.black.cgColor
        self.backgroundColor = .white
    }
    
    func makeMeScissorsButton() {
        self.setBackgroundImage(Game().scissorsImage, for: .normal)
        self.layer.cornerRadius = 14
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.black.cgColor
        self.backgroundColor = .white
    }
    
    func makeMeResetButton() {
        self.setTitle("Restart", for: .normal)
        self.setTitleColor(.black, for: .normal)
        self.layer.cornerRadius = 14
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.black.cgColor
        self.backgroundColor = .white
    }
    
    func makeMeSaveButton() {
        self.setTitle("Save", for: .normal)
        self.setTitleColor(.black, for: .normal)
        self.layer.cornerRadius = 14
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.black.cgColor
        self.backgroundColor = .white
    }
}
