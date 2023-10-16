//
//  SaveResults.swift
//  RPS
//
//  Created by VanMac on 15.10.2023.
//

import UIKit

struct KeysDefaults {
    static let keyName = "name"
    static let keyWin = "win"
    static let keyLose = "lose"
    static let keyDraw = "draw"
}

class SaveResults: UIViewController {
    
    let nameTextField = UITextField()
    let saveButton = UIButton()
    let counterWinTextField = UITextField()
    let counterLoseTextField = UITextField()
    let counterDrawTextField = UITextField()
    var saveWin = 0
    var saveLose = 0
    var saveDraw = 0
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        //title = "\(SaveResults.self)"
        view.backgroundColor = .white
        configureNameTextField()
        configureSaveButton()
        configureCounterWinTextField()
        configureCounterLoseTextField()
        configureCounterDrawTextField()
        backButton()
        //loadingData()
    }
}

extension SaveResults {
    func configureNameTextField() {
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(nameTextField)
        
        NSLayoutConstraint.activate([
            nameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            nameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameTextField.widthAnchor.constraint(equalToConstant: 200),
            nameTextField.heightAnchor.constraint(equalToConstant: 31)])
        
        nameTextField.makeMeNameTextField()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
    }
    
    @objc func hideKeyboard() {
        self.view.endEditing(true)
    }
}

extension SaveResults {
    func configureSaveButton() {
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(saveButton)
        
        NSLayoutConstraint.activate([
            saveButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 60),
            saveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            saveButton.widthAnchor.constraint(equalToConstant: 200),
            saveButton.heightAnchor.constraint(equalToConstant: 60)])
        
        saveButton.makeMeSaveButton()
        saveButton.addTarget(self, action: #selector(saveButtonAction), for: .touchUpInside)
    }
    
    @objc func saveButtonAction() {
        let name = nameTextField.text!
        let win = counterWinTextField.text!
        let lose = counterLoseTextField.text!
        let draw = counterDrawTextField.text!

        if !name.isEmpty && !win.isEmpty && !lose.isEmpty && !draw.isEmpty {
            Base.shared.saveResult(name: name, win: win, lose: lose, draw: draw)
            
            navigationController?.popToRootViewController(animated: true)
            
//            defaults.set(name, forKey: KeysDefaults.keyName)
//            defaults.set(win, forKey: KeysDefaults.keyWin)
//            defaults.set(lose, forKey: KeysDefaults.keyLose)
//            defaults.set(draw, forKey: KeysDefaults.keyDraw)
        }
    }
}

//extension SaveResults {
//    func loadingData() {
//        nameTextField.text = defaults.string(forKey: KeysDefaults.keyName)
//        counterWinTextField.text = defaults.string(forKey: KeysDefaults.keyWin)
//        counterLoseTextField.text = defaults.string(forKey: KeysDefaults.keyLose)
//        counterDrawTextField.text = defaults.string(forKey: KeysDefaults.keyDraw)
//    }
//}

extension SaveResults {
    func configureCounterWinTextField() {
        counterWinTextField.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(counterWinTextField)
        
        NSLayoutConstraint.activate([
            counterWinTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -30),
            counterWinTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -150),
            counterWinTextField.widthAnchor.constraint(equalToConstant: 100),
            counterWinTextField.heightAnchor.constraint(equalToConstant: 31)])
        
        counterWinTextField.makeMeCounterWinTextField()
        counterWinTextField.text = "Win: \(saveWin)"
    }
}

extension SaveResults {
    func configureCounterLoseTextField() {
        counterLoseTextField.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(counterLoseTextField)
        
        NSLayoutConstraint.activate([
            counterLoseTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -30),
            counterLoseTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            counterLoseTextField.widthAnchor.constraint(equalToConstant: 100),
            counterLoseTextField.heightAnchor.constraint(equalToConstant: 31)])
        
        counterLoseTextField.makeMeCounterLoseTextField()
        counterLoseTextField.text = "Lose: \(saveLose)"
    }
}

extension SaveResults {
    func configureCounterDrawTextField() {
        counterDrawTextField.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(counterDrawTextField)
        
        NSLayoutConstraint.activate([
            counterDrawTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -30),
            counterDrawTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 150),
            counterDrawTextField.widthAnchor.constraint(equalToConstant: 100),
            counterDrawTextField.heightAnchor.constraint(equalToConstant: 31)])
        
        counterDrawTextField.makeMeCounterDrawTextField()
        counterDrawTextField.text = "Draw: \(saveDraw)"
    }
}

extension SaveResults {
    func backButton() {
        //Back action
        navigationItem.backAction = UIAction(handler: { _ in
            let alertController = UIAlertController(title: "Are you sure?", message: "You lose you data!", preferredStyle: .alert)
            let action = UIAlertAction(title: "Yes", style: .default) { _ in
                self.navigationController?.popToRootViewController(animated: true)
            }
            
            let cancel = UIAlertAction(title: "Cancel", style: .default)
            
            alertController.addAction(action)
            alertController.addAction(cancel)
            
            self.present(alertController, animated: true)
        })
    }
}

