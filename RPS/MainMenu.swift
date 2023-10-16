//
//  ViewController.swift
//  RPS
//
//  Created by VanMac on 14.10.2023.
//

import UIKit

class MainMenu: UIViewController {
    
    let playGameButton = UIButton()
    let resultGameButton = UIButton()
    
    let mainImageView = UIImageView()
    let mainImage = UIImage(named: "mainImage")
    
    let gameLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //title = "\(MainMenu.self)"
        view.backgroundColor = .white
        configureMainImageView()
        configureGameLabel()
        configurePlayGameButton()
        configureResultGameButton()
        
    }
}

extension MainMenu {
    func configureMainImageView() {
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(mainImageView)
        
        NSLayoutConstraint.activate([
            mainImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            mainImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainImageView.widthAnchor.constraint(equalToConstant: 200),
            mainImageView.heightAnchor.constraint(equalToConstant: 200)])
        
        mainImageView.makeMeMainImageView()
    }
}

extension MainMenu {
    func configureGameLabel() {
        gameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(gameLabel)
        
        NSLayoutConstraint.activate([
            gameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
            gameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            gameLabel.widthAnchor.constraint(equalToConstant: 200),
            gameLabel.heightAnchor.constraint(equalToConstant: 200)])
        
        gameLabel.makeMeGameLabel()
    }
}

extension MainMenu {
    func configurePlayGameButton() {
        playGameButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(playGameButton)
        
        NSLayoutConstraint.activate([
            playGameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
            playGameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playGameButton.widthAnchor.constraint(equalToConstant: 200),
            playGameButton.heightAnchor.constraint(equalToConstant: 60)])
        
        playGameButton.makeMePlayGameButton()
        playGameButton.addTarget(self, action: #selector(playGameButtonAction), for: .touchUpInside)
    }
    
    @objc func playGameButtonAction() {
        let pushGameController = Game()
        navigationController?.pushViewController(pushGameController, animated: true)
    }
}

extension MainMenu {
    func configureResultGameButton() {
        resultGameButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(resultGameButton)
        
        NSLayoutConstraint.activate([
            resultGameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 280),
            resultGameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            resultGameButton.widthAnchor.constraint(equalToConstant: 200),
            resultGameButton.heightAnchor.constraint(equalToConstant: 60)])
        
        resultGameButton.makeMeResultGameButton()
        resultGameButton.addTarget(self, action: #selector(resultGameButtonAction), for: .touchUpInside)
    }
    
    @objc func resultGameButtonAction() {
        let pushResultController = Result()
        navigationController?.pushViewController(pushResultController, animated: true)
    }
}


