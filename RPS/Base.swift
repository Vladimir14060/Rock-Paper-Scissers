//
//  Base.swift
//  RPS
//
//  Created by VanMac on 16.10.2023.
//

import Foundation

class Base {
    let defaults = UserDefaults.standard
    
    static let shared = Base()
    
    struct UserResult:Codable {
        var name: String
        var win: String
        var lose: String
        var draw: String
        var description: String {
            return "\(name): \(win), \(lose), \(draw)"
        }
    }
    
    var results:[UserResult] {
        
        get {
            if let data = defaults.value(forKey: "results") as? Data {
                return try! PropertyListDecoder().decode([UserResult].self, from: data)
            } else {
                return [UserResult]()
            }
        }
        
        set {
            if let data = try? PropertyListEncoder().encode(newValue) {
                defaults.set(data, forKey: "results")
            }
        }
    }
    
    func saveResult(name: String, win: String, lose: String, draw: String) {
        let reesultss = UserResult(name: name, win: win, lose: lose, draw: draw)
        results.insert(reesultss, at: 0)
    }
}
