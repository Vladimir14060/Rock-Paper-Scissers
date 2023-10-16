//
//  UIImageView + extension.swift
//  RPS
//
//  Created by VanMac on 14.10.2023.
//

import UIKit

extension UIImageView {
    func makeMeRobotImageView() {
        self.layer.cornerRadius = 14
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.black.cgColor
        self.image = Game().robotImage
        self.backgroundColor = .white
    }
    
    func makeMeMainImageView() {
        //self.layer.cornerRadius = 14
        //self.layer.borderWidth = 3
        //self.layer.borderColor = UIColor.black.cgColor
        self.image = MainMenu().mainImage
        self.backgroundColor = .white
    }
}
