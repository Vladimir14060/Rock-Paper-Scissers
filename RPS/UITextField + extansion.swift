//
//  UITextField + extansion.swift
//  RPS
//
//  Created by VanMac on 15.10.2023.
//

import UIKit

extension UITextField {
    func makeMeNameTextField() {
        self.borderStyle = .roundedRect
        self.contentVerticalAlignment = .center
        self.textAlignment = .center
        self.placeholder = "Name"
        self.layer.cornerRadius = 8
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.black.cgColor
        self.backgroundColor = .white
    }
    
    func makeMeCounterWinTextField() {
        self.borderStyle = .roundedRect
        self.contentVerticalAlignment = .center
        self.textAlignment = .center
        self.layer.cornerRadius = 8
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.green.cgColor
        self.backgroundColor = .white
        self.isUserInteractionEnabled = false
    }
    
    func makeMeCounterLoseTextField() {
        self.borderStyle = .roundedRect
        self.contentVerticalAlignment = .center
        self.textAlignment = .center
        self.layer.cornerRadius = 8
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.red.cgColor
        self.backgroundColor = .white
        self.isUserInteractionEnabled = false
    }
    
    func makeMeCounterDrawTextField() {
        self.borderStyle = .roundedRect
        self.contentVerticalAlignment = .center
        self.textAlignment = .center
        self.layer.cornerRadius = 8
        self.layer.borderWidth = 3
        self.layer.borderColor = UIColor.gray.cgColor
        self.backgroundColor = .white
        self.isUserInteractionEnabled = false
    }
}
