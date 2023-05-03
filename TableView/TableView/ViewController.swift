//
//  ViewController.swift
//  TableView
//
//  Created by Mac on 03/05/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var foodItems : [String] = ["Upma","Poha","Dosa","Pav Bhaji","Vadapav","Samosa"]
  
    @IBOutlet weak var foodItemsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodItemsTableView.dataSource = self
        foodItemsTableView.delegate = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = self.foodItemsTableView.dequeueReusableCell(withIdentifier: "cell")
        tableViewCell?.textLabel?.text = foodItems[indexPath.row]
        return tableViewCell ?? UITableViewCell()
    }
}

