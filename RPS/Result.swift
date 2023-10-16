//
//  Result.swift
//  RPS
//
//  Created by VanMac on 14.10.2023.
//

import UIKit

class Result: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var resultTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Result:"
        view.backgroundColor = .white
        configureResultTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.resultTableView.reloadData()
    }
}

extension Result {
    func configureResultTableView() {
        resultTableView = UITableView(frame: view.bounds, style: .plain)
        
        resultTableView.delegate = self
        resultTableView.dataSource = self
        
        resultTableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        view.addSubview(resultTableView)
    }
}

//MARK: - UITableViewDataSource
extension Result {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Base.shared.results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell!
        
        if let dCell = tableView.dequeueReusableCell(withIdentifier: "dCell") {
            cell = dCell
        } else {
            cell = UITableViewCell()
        }
        
        cell.textLabel!.text = Base.shared.results[indexPath.row].description
        
        return cell
    }
    
}

//MARK: - UITableViewDelegate
extension Result {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}





