//
//  Game.swift
//  RPS
//
//  Created by VanMac on 14.10.2023.
//

import UIKit

class Game: UIViewController {
    
    let rockButton = UIButton()
    let paperButton = UIButton()
    let scissorsButton = UIButton()
    
    var statusLabel = UILabel()
    var counterLabel = UILabel()
    var numLabel = 5
    
    var counterWinLabel = UILabel()
    var numWin = 0
    var counterLoseLabel = UILabel()
    var numLose = 0
    var counterDrawLabel = UILabel()
    var numDraw = 0
    
    let rockImage = UIImage(named: "rock")
    let paperImage = UIImage(named: "paper")
    let scissorsImage = UIImage(named: "scissors")
    
    var robotImageView = UIImageView()
    let robotImage = UIImage(named: "robot")
    
    let resetButton = UIButton()
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        //title = "\(Game.self)"
        view.backgroundColor = .white
        configureRobotImageView()
        configureCounterLabel()
        configureCounterWinLabel()
        configureCounterLoseLabel()
        configureCounterDrawLabel()
        configureStatusLabel()
        configureResetButton()
        resetButton.isHidden = true
        configureRockButton()
        configurePaperButton()
        configureScissorsButton()
    }
}

extension Game {
    func configureRobotImageView() {
        robotImageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(robotImageView)
        
        NSLayoutConstraint.activate([
            robotImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200),
            robotImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            robotImageView.widthAnchor.constraint(equalToConstant: 100),
            robotImageView.heightAnchor.constraint(equalToConstant: 100)])
        
        robotImageView.makeMeRobotImageView()
    }
}

extension Game {
    func configureCounterLabel() {
        counterLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(counterLabel)
        
        NSLayoutConstraint.activate([
            counterLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            counterLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            counterLabel.widthAnchor.constraint(equalToConstant: 200),
            counterLabel.heightAnchor.constraint(equalToConstant: 100)])
        
        counterLabel.makeMeCounterLabel()
    }
}

extension Game {
    func configureCounterWinLabel() {
        counterWinLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(counterWinLabel)
        
        NSLayoutConstraint.activate([
            counterWinLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100),
            counterWinLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -150),
            counterWinLabel.widthAnchor.constraint(equalToConstant: 100),
            counterWinLabel.heightAnchor.constraint(equalToConstant: 100)])
        
        counterWinLabel.makeMeCounterWinLabel()
    }
}

extension Game {
    func configureCounterLoseLabel() {
        counterLoseLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(counterLoseLabel)
        
        NSLayoutConstraint.activate([
            counterLoseLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100),
            counterLoseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            counterLoseLabel.widthAnchor.constraint(equalToConstant: 100),
            counterLoseLabel.heightAnchor.constraint(equalToConstant: 100)])
        
        counterLoseLabel.makeMeCounterLoseLabel()
    }
}

extension Game {
    func configureCounterDrawLabel() {
        counterDrawLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(counterDrawLabel)
        
        NSLayoutConstraint.activate([
            counterDrawLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100),
            counterDrawLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 150),
            counterDrawLabel.widthAnchor.constraint(equalToConstant: 100),
            counterDrawLabel.heightAnchor.constraint(equalToConstant: 100)])
        
        counterDrawLabel.makeMeCounterDrawLabel()
    }
}

extension Game {
    func configureStatusLabel() {
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(statusLabel)
        
        NSLayoutConstraint.activate([
            statusLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            statusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            statusLabel.widthAnchor.constraint(equalToConstant: 100),
            statusLabel.heightAnchor.constraint(equalToConstant: 50)])
        
        statusLabel.makeMeStatusLabel()
    }
}

extension Game {
    func configureResetButton() {
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(resetButton)
        
        NSLayoutConstraint.activate([
            resetButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 300),
            resetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            resetButton.widthAnchor.constraint(equalToConstant: 200),
            resetButton.heightAnchor.constraint(equalToConstant: 60)])
        
        resetButton.makeMeResetButton()
        resetButton.addTarget(self, action: #selector(resetButtonAction), for: .touchUpInside)
    }
    
    @objc func resetButtonAction() {
        reset()
    }
}

extension Game {
    func configureRockButton() {
        rockButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(rockButton)
        
        NSLayoutConstraint.activate([
            rockButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
            rockButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -150),
            rockButton.widthAnchor.constraint(equalToConstant: 100),
            rockButton.heightAnchor.constraint(equalToConstant: 100)])
        
        rockButton.makeMeRockButton()
        rockButton.addTarget(self, action: #selector(choiceRockButton), for: .touchUpInside)
    }
    
    @objc func choiceRockButton() {
        play(.rock)
        rockButton.isUserInteractionEnabled = false
    }
}

extension Game {
    func configurePaperButton() {
        paperButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(paperButton)
        
        NSLayoutConstraint.activate([
            paperButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
            paperButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            paperButton.widthAnchor.constraint(equalToConstant: 100),
            paperButton.heightAnchor.constraint(equalToConstant: 100)])
        
        paperButton.makeMePaperButton()
        paperButton.addTarget(self, action: #selector(choicePaperButton), for: .touchUpInside)
    }
    
    @objc func choicePaperButton() {
        play(.paper)
        paperButton.isUserInteractionEnabled = false
    }
}

extension Game {
    func configureScissorsButton() {
        scissorsButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(scissorsButton)
        
        NSLayoutConstraint.activate([
            scissorsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
            scissorsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 150),
            scissorsButton.widthAnchor.constraint(equalToConstant: 100),
            scissorsButton.heightAnchor.constraint(equalToConstant: 100)])
        
        scissorsButton.makeMeScissorsButton()
        scissorsButton.addTarget(self, action: #selector(choiceScissorsButton), for: .touchUpInside)
    }
    
    @objc func choiceScissorsButton() {
        play(.scissors)
        scissorsButton.isUserInteractionEnabled = false
    }
}

extension Game {
    func play(_ sign: Sign) {
        let computerSign = randomSign()
        
        robotImageView.image = computerSign.image
        
        resetButton.isHidden = false
        counterLabel.isHidden = true
        
        switch sign {
        case .rock:
            rockButton.isHidden = false
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        case .paper:
            rockButton.isHidden = true
            paperButton.isHidden = false
            scissorsButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isHidden = false
        }
        
        let result = sign.takeTurn(computerSign)
        
        switch result {
        case .win:
            statusLabel.text = "You win!"
            robotImageView.backgroundColor = .red
            rockButton.backgroundColor = .green
            paperButton.backgroundColor = .green
            scissorsButton.backgroundColor = .green
            numWin += 1
            if numWin == 3 {
                counterLabel.text = "You win!"
                counterWinLabel.text = "Win: \(numWin)"
                alertStopGame()
            }
            counterWinLabel.text = "Win: \(numWin)"
        case .lose:
            statusLabel.text = "You lose!"
            robotImageView.backgroundColor = .green
            rockButton.backgroundColor = .red
            paperButton.backgroundColor = .red
            scissorsButton.backgroundColor = .red
            numLose += 1
            if numLose == 3 {
                counterLabel.text = "You lose!"
                counterLoseLabel.text = "Lose: \(numLose)"
                alertStopGame()
            }
            counterLoseLabel.text = "Lose: \(numLose)"
        case .draw:
            statusLabel.text = "Draw!"
            robotImageView.backgroundColor = .gray
            rockButton.backgroundColor = .gray
            paperButton.backgroundColor = .gray
            scissorsButton.backgroundColor = .gray
            numDraw += 1
            if numDraw == 3 {
                counterLabel.text = "Draw!"
                counterDrawLabel.text = "Draw: \(numDraw)"
                alertStopGame()
            }
            counterDrawLabel.text = "Draw: \(numDraw)"
        }
        
    }
}

extension Game {
    func reset() {
        rockButton.isHidden = false
        paperButton.isHidden = false
        scissorsButton.isHidden = false
        resetButton.isHidden = true
        robotImageView.image = robotImage
        robotImageView.backgroundColor = .white
        statusLabel.text = ""
        counterLabel.isHidden = false
        rockButton.backgroundColor = .white
        paperButton.backgroundColor = .white
        scissorsButton.backgroundColor = .white
        rockButton.isUserInteractionEnabled = true
        paperButton.isUserInteractionEnabled = true
        scissorsButton.isUserInteractionEnabled = true
        
        if numLabel == 1 {
            counterLabel.text = "Stop game!"
            alertStopGame()
        } else {
            numLabel -= 1
            counterLabel.text = "\(numLabel)"
        }
        
    }
}

extension Game {
    func alertStopGame() {
        var titleAlert: String {
            if numWin == 3 {
                return "You win!"
            } else if numLose == 3 {
                return "You lose!"
            } else if numDraw == 3 {
                return "Draw!"
            } else {
                return "Stop game!"
            }
        }
        
        let alertController = UIAlertController(title: titleAlert, message: "Save results?", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Yes", style: .default) { _ in
            let pushSaveResultsController = SaveResults()
            pushSaveResultsController.saveWin = self.numWin
            pushSaveResultsController.saveLose = self.numLose
            pushSaveResultsController.saveDraw = self.numDraw
            self.navigationController?.pushViewController(pushSaveResultsController, animated: true)
            
        }
            
        let cancel = UIAlertAction(title: "No", style: .default) { _ in
            self.navigationController?.popViewController(animated: true)
        }
        
        alertController.addAction(action)
        alertController.addAction(cancel)
        present(alertController, animated: true)
    }
}

